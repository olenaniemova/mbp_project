require "rails_helper"

RSpec.describe RouteMenusController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/route_menus").to route_to("route_menus#index")
    end

    it "routes to #new" do
      expect(:get => "/route_menus/new").to route_to("route_menus#new")
    end

    it "routes to #show" do
      expect(:get => "/route_menus/1").to route_to("route_menus#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/route_menus/1/edit").to route_to("route_menus#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/route_menus").to route_to("route_menus#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/route_menus/1").to route_to("route_menus#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/route_menus/1").to route_to("route_menus#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/route_menus/1").to route_to("route_menus#destroy", :id => "1")
    end
  end
end
