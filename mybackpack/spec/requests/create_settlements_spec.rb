require 'rails_helper'

RSpec.describe "CreateSettlements", type: :request do
  describe "GET /create_settlements" do
    it "works! (now write some real specs)" do
      get create_settlements_path
      expect(response).to have_http_status(200)
    end
  end
end
