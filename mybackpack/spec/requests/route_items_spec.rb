require 'rails_helper'

RSpec.describe "RouteItems", type: :request do
  describe "GET /route_items" do
    it "works! (now write some real specs)" do
      get route_items_path
      expect(response).to have_http_status(200)
    end
  end
end
