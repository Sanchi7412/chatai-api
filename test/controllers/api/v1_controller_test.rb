require "test_helper"

class Api::V1ControllerTest < ActionDispatch::IntegrationTest
  test "should get chatsPosts" do
    get api_v1_chatsPosts_url
    assert_response :success
  end
end
