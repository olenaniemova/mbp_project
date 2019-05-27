require "rails_helper"

RSpec.describe RouteItemsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/route_items").to route_to("route_items#index")
    end

    it "routes to #new" do
      expect(:get => "/route_items/new").to route_to("route_items#new")
    end

    it "routes to #show" do
      expect(:get => "/route_items/1").to route_to("route_items#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/route_items/1/edit").to route_to("route_items#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/route_items").to route_to("route_items#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/route_items/1").to route_to("route_items#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/route_items/1").to route_to("route_items#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/route_items/1").to route_to("route_items#destroy", :id => "1")
    end
  end
end
