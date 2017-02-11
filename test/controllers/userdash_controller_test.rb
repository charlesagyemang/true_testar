require 'test_helper'

class UserdashControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get userdash_index_url
    assert_response :success
  end

end
