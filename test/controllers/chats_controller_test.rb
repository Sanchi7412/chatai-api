require "test_helper"

class ChatsControllerTest < ActionDispatch::IntegrationTest
  test "should get register" do
    get chats_register_url
    assert_response :success
  end

  test "should get index" do
    get chats_index_url
    assert_response :success
  end

  test "should get update" do
    get chats_update_url
    assert_response :success
  end

  test "should get delete" do
    get chats_delete_url
    assert_response :success
  end
end
