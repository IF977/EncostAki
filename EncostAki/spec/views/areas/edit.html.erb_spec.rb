require 'rails_helper'

RSpec.describe "areas/edit", type: :view do
  before(:each) do
    @area = assign(:area, Area.create!(
      :regional => "MyString",
      :endereco => "MyString",
      :bairro => "MyString",
      :localidade => "MyString",
      :descricao => "MyString",
      :latitude => 1.5,
      :longitude => 1.5
    ))
  end

  it "renders the edit area form" do
    render

    assert_select "form[action=?][method=?]", area_path(@area), "post" do

      assert_select "input[name=?]", "area[regional]"

      assert_select "input[name=?]", "area[endereco]"

      assert_select "input[name=?]", "area[bairro]"

      assert_select "input[name=?]", "area[localidade]"

      assert_select "input[name=?]", "area[descricao]"

      assert_select "input[name=?]", "area[latitude]"

      assert_select "input[name=?]", "area[longitude]"
    end
  end
end
