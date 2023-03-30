require "test_helper"

class Users::OmniauthCallbacksControllerTest < ActionDispatch::IntegrationTest
  test "should get google_auth2" do
    get users_omniauth_callbacks_google_auth2_url
    assert_response :success
  end
end
