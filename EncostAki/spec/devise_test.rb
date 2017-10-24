class SomeControllerTest < ActionController::TestCase
  # For Devise >= 4.1.1
  include Devise::Test::ControllerHelpers
  # Use the following instead if you are on Devise <= 4.1.0
  # include Devise::TestHelpers

  def setup
    @request.env["devise.mapping"] = Devise.mappings[:admin]
    sign_in FactoryGirl.create(:admin)
  end
end