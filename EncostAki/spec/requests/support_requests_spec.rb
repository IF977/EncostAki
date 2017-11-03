require 'rails_helper'

RSpec.describe "SupportRequests", type: :request do
  describe "GET /support_requests" do
    it "works! (now write some real specs)" do
      get support_requests_path
      expect(response).to have_http_status(200)
    end
  end
end
