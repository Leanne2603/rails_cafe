require 'test_helper'

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get menu" do
    get admin_menu_url
    assert_response :success
  end

end
