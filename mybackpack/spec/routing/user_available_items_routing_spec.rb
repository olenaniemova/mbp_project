require "rails_helper"

RSpec.describe UserAvailableItemsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/user_available_items").to route_to("user_available_items#index")
    end

    it "routes to #new" do
      expect(:get => "/user_available_items/new").to route_to("user_available_items#new")
    end

    it "routes to #show" do
      expect(:get => "/user_available_items/1").to route_to("user_available_items#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/user_available_items/1/edit").to route_to("user_available_items#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/user_available_items").to route_to("user_available_items#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/user_available_items/1").to route_to("user_available_items#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/user_available_items/1").to route_to("user_available_items#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/user_available_items/1").to route_to("user_available_items#destroy", :id => "1")
    end
  end
end
