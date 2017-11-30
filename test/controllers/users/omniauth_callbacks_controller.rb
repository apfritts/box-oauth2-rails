require 'test_helper'

class AuthControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get box_oauth2" do
    get auth_controller_box_oauth2_url
    assert_response :success
  end

end
