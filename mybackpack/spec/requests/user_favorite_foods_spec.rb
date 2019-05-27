require 'rails_helper'

RSpec.describe "UserFavoriteFoods", type: :request do
  describe "GET /user_favorite_foods" do
    it "works! (now write some real specs)" do
      get user_favorite_foods_path
      expect(response).to have_http_status(200)
    end
  end
end
