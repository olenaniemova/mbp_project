require "rails_helper"

RSpec.describe RouteStatusesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/route_statuses").to route_to("route_statuses#index")
    end

    it "routes to #new" do
      expect(:get => "/route_statuses/new").to route_to("route_statuses#new")
    end

    it "routes to #show" do
      expect(:get => "/route_statuses/1").to route_to("route_statuses#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/route_statuses/1/edit").to route_to("route_statuses#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/route_statuses").to route_to("route_statuses#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/route_statuses/1").to route_to("route_statuses#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/route_statuses/1").to route_to("route_statuses#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/route_statuses/1").to route_to("route_statuses#destroy", :id => "1")
    end
  end
end
