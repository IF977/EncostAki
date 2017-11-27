require "rails_helper"

RSpec.describe StatistcsController, type: :routing do
  describe "rota de estatistica" do
    it "routes to #index" do
      expect(:get => "/statistcs").to route_to("statistcs#index")
    end
  end
end