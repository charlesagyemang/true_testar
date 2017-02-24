require 'test_helper'

class TestownersControllerTest < ActionDispatch::IntegrationTest
  test "should get profile" do
    get testowners_profile_url
    assert_response :success
  end

end
