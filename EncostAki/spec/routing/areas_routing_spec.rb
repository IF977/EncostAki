require "rails_helper"

RSpec.describe AreasController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/areas").to route_to("areas#index")
    end

    it "routes to #new" do
      expect(:get => "/areas/new").to route_to("areas#new")
    end

    it "routes to #show" do
      expect(:get => "/areas/1").to route_to("areas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/areas/1/edit").to route_to("areas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/areas").to route_to("areas#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/areas/1").to route_to("areas#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/areas/1").to route_to("areas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/areas/1").to route_to("areas#destroy", :id => "1")
    end

  end
end
