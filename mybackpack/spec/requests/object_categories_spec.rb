require 'rails_helper'

RSpec.describe "ObjectCategories", type: :request do
  describe "GET /object_categories" do
    it "works! (now write some real specs)" do
      get object_categories_path
      expect(response).to have_http_status(200)
    end
  end
end
