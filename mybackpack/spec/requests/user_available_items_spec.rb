require 'rails_helper'

RSpec.describe "UserAvailableItems", type: :request do
  describe "GET /user_available_items" do
    it "works! (now write some real specs)" do
      get user_available_items_path
      expect(response).to have_http_status(200)
    end
  end
end
