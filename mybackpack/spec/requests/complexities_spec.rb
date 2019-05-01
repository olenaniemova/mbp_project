require 'rails_helper'

RSpec.describe "Complexities", type: :request do
  describe "GET /complexities" do
    it "works! (now write some real specs)" do
      get complexities_path
      expect(response).to have_http_status(200)
    end
  end
end
