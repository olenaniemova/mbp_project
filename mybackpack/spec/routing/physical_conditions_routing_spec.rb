require "rails_helper"

RSpec.describe PhysicalConditionsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/physical_conditions").to route_to("physical_conditions#index")
    end

    it "routes to #new" do
      expect(:get => "/physical_conditions/new").to route_to("physical_conditions#new")
    end

    it "routes to #show" do
      expect(:get => "/physical_conditions/1").to route_to("physical_conditions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/physical_conditions/1/edit").to route_to("physical_conditions#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/physical_conditions").to route_to("physical_conditions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/physical_conditions/1").to route_to("physical_conditions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/physical_conditions/1").to route_to("physical_conditions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/physical_conditions/1").to route_to("physical_conditions#destroy", :id => "1")
    end
  end
end
