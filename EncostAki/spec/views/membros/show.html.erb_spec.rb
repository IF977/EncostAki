require 'rails_helper'

RSpec.describe "membros/show", type: :view do
  before(:each) do
    @membro = assign(:membro, Membro.create!(
      :admin => false,
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Email/)
  end
end
