require 'test_helper'

class CompaniesControllerTest < ActionDispatch::IntegrationTest
  test "should get profile" do
    get companies_profile_url
    assert_response :success
  end

end
