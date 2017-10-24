require 'rails_helper'

RSpec.describe "risk_areas/index", type: :view do
  before(:each) do
    assign(:risk_areas, [
      RiskArea.create!(
        :regional => "Regional",
        :endereco => "Endereco",
        :bairro => "Bairro",
        :localidade => "Localidade",
        :descricao => "Descricao",
        :longitude => 2.5
      ),
      RiskArea.create!(
        :regional => "Regional",
        :endereco => "Endereco",
        :bairro => "Bairro",
        :localidade => "Localidade",
        :descricao => "Descricao",
        :longitude => 2.5
      )
    ])
  end

  it "renders a list of risk_areas" do
    render
    assert_select "tr>td", :text => "Regional".to_s, :count => 2
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    assert_select "tr>td", :text => "Bairro".to_s, :count => 2
    assert_select "tr>td", :text => "Localidade".to_s, :count => 2
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
  end
end
