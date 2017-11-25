require 'rails_helper'

RSpec.describe "membros/edit", type: :view do
  before(:each) do
    @membro = assign(:membro, Membro.create!(
      :admin => false,
      :email => "MyString"
    ))
  end

  it "renders the edit membro form" do
    render

    assert_select "form[action=?][method=?]", membro_path(@membro), "post" do

      assert_select "input[name=?]", "membro[admin]"

      assert_select "input[name=?]", "membro[email]"
    end
  end
end
