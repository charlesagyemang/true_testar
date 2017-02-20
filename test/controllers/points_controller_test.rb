require 'test_helper'

class PointsControllerTest < ActionDispatch::IntegrationTest
  test "should get my_points" do
    get points_my_points_url
    assert_response :success
  end

  test "should get redeem_points" do
    get points_redeem_points_url
    assert_response :success
  end

end
