require "test_helper"

class DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get store" do
    get dashboard_store_url
    assert_response :success
  end

  test "should get users" do
    get dashboard_users_url
    assert_response :success
  end

  test "should get messages" do
    get dashboard_messages_url
    assert_response :success
  end

  test "should get notifcations" do
    get dashboard_notifcations_url
    assert_response :success
  end

  test "should get settings" do
    get dashboard_settings_url
    assert_response :success
  end
end
