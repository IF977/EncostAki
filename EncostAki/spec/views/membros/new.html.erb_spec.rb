require 'rails_helper'

RSpec.describe "membros/new", type: :view do
  before(:each) do
    assign(:membro, Membro.new(
      :admin => false,
      :email => "MyString"
    ))
  end

  it "renders new membro form" do
    render

    assert_select "form[action=?][method=?]", membros_path, "post" do

      assert_select "input[name=?]", "membro[admin]"

      assert_select "input[name=?]", "membro[email]"
    end
  end
end
