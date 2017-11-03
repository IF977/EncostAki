require "rails_helper"

RSpec.describe SupportRequestsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/support_requests").to route_to("support_requests#index")
    end

    it "routes to #new" do
      expect(:get => "/support_requests/new").to route_to("support_requests#new")
    end

    it "routes to #show" do
      expect(:get => "/support_requests/1").to route_to("support_requests#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/support_requests/1/edit").to route_to("support_requests#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/support_requests").to route_to("support_requests#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/support_requests/1").to route_to("support_requests#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/support_requests/1").to route_to("support_requests#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/support_requests/1").to route_to("support_requests#destroy", :id => "1")
    end

  end
end
