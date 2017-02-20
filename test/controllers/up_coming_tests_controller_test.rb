require 'test_helper'

class UpComingTestsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get up_coming_tests_index_url
    assert_response :success
  end

end
