require 'rails_helper'

RSpec.describe "RouteStatuses", type: :request do
  describe "GET /route_statuses" do
    it "works! (now write some real specs)" do
      get route_statuses_path
      expect(response).to have_http_status(200)
    end
  end
end
