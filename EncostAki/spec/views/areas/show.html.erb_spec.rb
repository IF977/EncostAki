require 'rails_helper'

RSpec.describe "areas/show", type: :view do
  before(:each) do
    @area = assign(:area, Area.create!(
      :regional => "Regional",
      :endereco => "Endereco",
      :bairro => "Bairro",
      :localidade => "Localidade",
      :descricao => "Descricao",
      :latitude => 2.5,
      :longitude => 3.5
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
    expect(rendered).to match(/3.5/)
  end
end
