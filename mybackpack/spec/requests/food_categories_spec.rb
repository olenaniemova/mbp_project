require 'rails_helper'

RSpec.describe "FoodCategories", type: :request do
  describe "GET /food_categories" do
    it "works! (now write some real specs)" do
      get food_categories_path
      expect(response).to have_http_status(200)
    end
  end
end
