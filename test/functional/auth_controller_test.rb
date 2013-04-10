require 'test_helper'

class AuthControllerTest < ActionController::TestCase
  test "should get user" do
    get :user
    assert_response :success
  end

  test "should get vhost" do
    get :vhost
    assert_response :success
  end

  test "should get resource" do
    get :resource
    assert_response :success
  end

end
