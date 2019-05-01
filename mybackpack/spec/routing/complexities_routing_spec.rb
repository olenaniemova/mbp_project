require "rails_helper"

RSpec.describe ComplexitiesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/complexities").to route_to("complexities#index")
    end

    it "routes to #new" do
      expect(:get => "/complexities/new").to route_to("complexities#new")
    end

    it "routes to #show" do
      expect(:get => "/complexities/1").to route_to("complexities#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/complexities/1/edit").to route_to("complexities#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/complexities").to route_to("complexities#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/complexities/1").to route_to("complexities#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/complexities/1").to route_to("complexities#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/complexities/1").to route_to("complexities#destroy", :id => "1")
    end
  end
end
