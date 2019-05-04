require 'rails_helper'

RSpec.describe "WeatherTypes", type: :request do
  describe "GET /weather_types" do
    it "works! (now write some real specs)" do
      get weather_types_path
      expect(response).to have_http_status(200)
    end
  end
end
