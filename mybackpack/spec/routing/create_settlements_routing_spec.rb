require "rails_helper"

RSpec.describe CreateSettlementsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/create_settlements").to route_to("create_settlements#index")
    end

    it "routes to #new" do
      expect(:get => "/create_settlements/new").to route_to("create_settlements#new")
    end

    it "routes to #show" do
      expect(:get => "/create_settlements/1").to route_to("create_settlements#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/create_settlements/1/edit").to route_to("create_settlements#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/create_settlements").to route_to("create_settlements#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/create_settlements/1").to route_to("create_settlements#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/create_settlements/1").to route_to("create_settlements#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/create_settlements/1").to route_to("create_settlements#destroy", :id => "1")
    end
  end
end
