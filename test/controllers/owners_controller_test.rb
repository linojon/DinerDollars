require 'test_helper'

class OwnersControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get summary" do
    get :summary
    assert_response :success
  end

end
