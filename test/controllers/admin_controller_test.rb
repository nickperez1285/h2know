require 'test_helper'

class AdminControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get emailer" do
    get :emailer
    assert_response :success
  end

end
