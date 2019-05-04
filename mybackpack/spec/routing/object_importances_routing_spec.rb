require "rails_helper"

RSpec.describe ObjectImportancesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/object_importances").to route_to("object_importances#index")
    end

    it "routes to #new" do
      expect(:get => "/object_importances/new").to route_to("object_importances#new")
    end

    it "routes to #show" do
      expect(:get => "/object_importances/1").to route_to("object_importances#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/object_importances/1/edit").to route_to("object_importances#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/object_importances").to route_to("object_importances#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/object_importances/1").to route_to("object_importances#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/object_importances/1").to route_to("object_importances#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/object_importances/1").to route_to("object_importances#destroy", :id => "1")
    end
  end
end
