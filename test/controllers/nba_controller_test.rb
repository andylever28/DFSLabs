require 'test_helper'

class NbaControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get nba_home_url
    assert_response :success
  end

end
