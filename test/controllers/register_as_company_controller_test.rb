require 'test_helper'

class RegisterAsCompanyControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get register_as_company_login_url
    assert_response :success
  end

  test "should get signup" do
    get register_as_company_signup_url
    assert_response :success
  end

end
