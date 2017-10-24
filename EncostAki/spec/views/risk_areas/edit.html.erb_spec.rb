require 'rails_helper'

RSpec.describe "risk_areas/edit", type: :view do
  before(:each) do
    @risk_area = assign(:risk_area, RiskArea.create!(
      :regional => "MyString",
      :endereco => "MyString",
      :bairro => "MyString",
      :localidade => "MyString",
      :descricao => "MyString",
      :longitude => 1.5
    ))
  end

  it "renders the edit risk_area form" do
    render

    assert_select "form[action=?][method=?]", risk_area_path(@risk_area), "post" do

      assert_select "input[name=?]", "risk_area[regional]"

      assert_select "input[name=?]", "risk_area[endereco]"

      assert_select "input[name=?]", "risk_area[bairro]"

      assert_select "input[name=?]", "risk_area[localidade]"

      assert_select "input[name=?]", "risk_area[descricao]"

      assert_select "input[name=?]", "risk_area[longitude]"
    end
  end
end
