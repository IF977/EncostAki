require 'rails_helper'

RSpec.describe "areas/index", type: :view do
  before(:each) do
    assign(:areas, [
      Area.create!(
        :regional => "Regional",
        :endereco => "Endereco",
        :bairro => "Bairro",
        :localidade => "Localidade",
        :descricao => "Descricao",
        :latitude => 2.5,
        :longitude => 3.5
      ),
      Area.create!(
        :regional => "Regional",
        :endereco => "Endereco",
        :bairro => "Bairro",
        :localidade => "Localidade",
        :descricao => "Descricao",
        :latitude => 2.5,
        :longitude => 3.5
      )
    ])
  end

  it "renders a list of areas" do
    render
    assert_select "tr>td", :text => "Regional".to_s, :count => 2
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    assert_select "tr>td", :text => "Bairro".to_s, :count => 2
    assert_select "tr>td", :text => "Localidade".to_s, :count => 2
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => 3.5.to_s, :count => 2
  end
end
