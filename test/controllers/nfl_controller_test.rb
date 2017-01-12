require 'test_helper'

class NflControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get nfl_home_url
    assert_response :success
  end

end
