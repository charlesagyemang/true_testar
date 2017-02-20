require 'test_helper'

class OnGoingTestsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get on_going_tests_index_url
    assert_response :success
  end

end
