require 'test_helper'

class AcctsControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get accts_login_url
    assert_response :success
  end

end
