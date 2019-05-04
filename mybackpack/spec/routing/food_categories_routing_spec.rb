require "rails_helper"

RSpec.describe FoodCategoriesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/food_categories").to route_to("food_categories#index")
    end

    it "routes to #new" do
      expect(:get => "/food_categories/new").to route_to("food_categories#new")
    end

    it "routes to #show" do
      expect(:get => "/food_categories/1").to route_to("food_categories#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/food_categories/1/edit").to route_to("food_categories#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/food_categories").to route_to("food_categories#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/food_categories/1").to route_to("food_categories#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/food_categories/1").to route_to("food_categories#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/food_categories/1").to route_to("food_categories#destroy", :id => "1")
    end
  end
end
