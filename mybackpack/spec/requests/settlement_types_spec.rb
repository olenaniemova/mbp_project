require 'rails_helper'

RSpec.describe "SettlementTypes", type: :request do
  describe "GET /settlement_types" do
    it "works! (now write some real specs)" do
      get settlement_types_path
      expect(response).to have_http_status(200)
    end
  end
end
