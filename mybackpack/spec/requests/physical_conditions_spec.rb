require 'rails_helper'

RSpec.describe "PhysicalConditions", type: :request do
  describe "GET /physical_conditions" do
    it "works! (now write some real specs)" do
      get physical_conditions_path
      expect(response).to have_http_status(200)
    end
  end
end
