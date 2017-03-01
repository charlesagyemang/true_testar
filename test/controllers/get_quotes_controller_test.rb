require 'test_helper'

class GetQuotesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get get_quotes_index_url
    assert_response :success
  end

end
