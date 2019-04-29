require "rails_helper"

RSpec.describe FoodTypesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/food_types").to route_to("food_types#index")
    end

    it "routes to #new" do
      expect(:get => "/food_types/new").to route_to("food_types#new")
    end

    it "routes to #show" do
      expect(:get => "/food_types/1").to route_to("food_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/food_types/1/edit").to route_to("food_types#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/food_types").to route_to("food_types#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/food_types/1").to route_to("food_types#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/food_types/1").to route_to("food_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/food_types/1").to route_to("food_types#destroy", :id => "1")
    end
  end
end
