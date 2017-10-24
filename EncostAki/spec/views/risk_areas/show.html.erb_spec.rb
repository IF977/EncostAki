require 'rails_helper'

RSpec.describe "risk_areas/show", type: :view do
  before(:each) do
    @risk_area = assign(:risk_area, RiskArea.create!(
      :regional => "Regional",
      :endereco => "Endereco",
      :bairro => "Bairro",
      :localidade => "Localidade",
      :descricao => "Descricao",
      :longitude => 2.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Regional/)
    expect(rendered).to match(/Endereco/)
    expect(rendered).to match(/Bairro/)
    expect(rendered).to match(/Localidade/)
    expect(rendered).to match(/Descricao/)
    expect(rendered).to match(/2.5/)
  end
end
