require 'rails_helper'

RSpec.describe "ObjectImportances", type: :request do
  describe "GET /object_importances" do
    it "works! (now write some real specs)" do
      get object_importances_path
      expect(response).to have_http_status(200)
    end
  end
end
