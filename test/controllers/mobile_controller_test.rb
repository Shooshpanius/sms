require 'test_helper'

class MobileControllerTest < ActionController::TestCase
  test "should get get_unsend" do
    get :get_unsend
    assert_response :success
  end

end
