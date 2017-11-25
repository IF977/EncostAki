require 'rails_helper'

RSpec.describe "membros/index", type: :view do
  before(:each) do
    assign(:membros, [
      Membro.create!(
        :admin => false,
        :email => "Email"
      ),
      Membro.create!(
        :admin => false,
        :email => "Email"
      )
    ])
  end

  it "renders a list of membros" do
    render
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
