require 'rails_helper'

RSpec.describe "areas/new", type: :view do
  before(:each) do
    assign(:area, Area.new(
      :regional => "MyString",
      :endereco => "MyString",
      :bairro => "MyString",
      :localidade => "MyString",
      :descricao => "MyString",
      :latitude => 1.5,
      :longitude => 1.5
    ))
  end

  it "renders new area form" do
    render

    assert_select "form[action=?][method=?]", areas_path, "post" do

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
