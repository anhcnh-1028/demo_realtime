require 'test_helper'

class NotificationsControllerTest < ActionDispatch::IntegrationTest
  test "should get CreateNotify" do
    get notifications_CreateNotify_url
    assert_response :success
  end

  test "should get ShowNotify" do
    get notifications_ShowNotify_url
    assert_response :success
  end

end
