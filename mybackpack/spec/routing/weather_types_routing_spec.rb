require "rails_helper"

RSpec.describe WeatherTypesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/weather_types").to route_to("weather_types#index")
    end

    it "routes to #new" do
      expect(:get => "/weather_types/new").to route_to("weather_types#new")
    end

    it "routes to #show" do
      expect(:get => "/weather_types/1").to route_to("weather_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/weather_types/1/edit").to route_to("weather_types#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/weather_types").to route_to("weather_types#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/weather_types/1").to route_to("weather_types#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/weather_types/1").to route_to("weather_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/weather_types/1").to route_to("weather_types#destroy", :id => "1")
    end
  end
end
