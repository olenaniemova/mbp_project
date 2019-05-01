require "rails_helper"

RSpec.describe ObjectCategoriesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/object_categories").to route_to("object_categories#index")
    end

    it "routes to #new" do
      expect(:get => "/object_categories/new").to route_to("object_categories#new")
    end

    it "routes to #show" do
      expect(:get => "/object_categories/1").to route_to("object_categories#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/object_categories/1/edit").to route_to("object_categories#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/object_categories").to route_to("object_categories#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/object_categories/1").to route_to("object_categories#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/object_categories/1").to route_to("object_categories#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/object_categories/1").to route_to("object_categories#destroy", :id => "1")
    end
  end
end
