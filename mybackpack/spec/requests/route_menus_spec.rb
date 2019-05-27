require 'rails_helper'

RSpec.describe "RouteMenus", type: :request do
  describe "GET /route_menus" do
    it "works! (now write some real specs)" do
      get route_menus_path
      expect(response).to have_http_status(200)
    end
  end
end
