require 'test_helper'

class CompdashControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get compdash_index_url
    assert_response :success
  end

end
