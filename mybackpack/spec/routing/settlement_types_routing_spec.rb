require "rails_helper"

RSpec.describe SettlementTypesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/settlement_types").to route_to("settlement_types#index")
    end

    it "routes to #new" do
      expect(:get => "/settlement_types/new").to route_to("settlement_types#new")
    end

    it "routes to #show" do
      expect(:get => "/settlement_types/1").to route_to("settlement_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/settlement_types/1/edit").to route_to("settlement_types#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/settlement_types").to route_to("settlement_types#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/settlement_types/1").to route_to("settlement_types#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/settlement_types/1").to route_to("settlement_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/settlement_types/1").to route_to("settlement_types#destroy", :id => "1")
    end
  end
end
