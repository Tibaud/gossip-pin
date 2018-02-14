require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest

  test "should get home page" do
    get root_path
    assert_response :success
  end

  test "should get login page" do
    get new_user_session_path
    assert_response :success
  end

   test "should get register page" do
    get new_user_registration_path
    assert_response :success
  end

   test "should not get new gossip page" do
    get new_pin_path
    assert_response :redirect
  end

  test "should not get user settings page" do
    get edit_user_registration_path
    assert_response :redirect
  end

end
