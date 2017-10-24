require 'rails_helper'

RSpec.describe "RiskAreas", type: :request do
  describe "GET /risk_areas" do
    it "works! (now write some real specs)" do
      get risk_areas_path
      expect(response).to have_http_status(200)
    end
  end
end
