require 'test_helper'

class ReferFriendsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get refer_friends_index_url
    assert_response :success
  end

end
