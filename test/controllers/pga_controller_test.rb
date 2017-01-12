require 'test_helper'

class PgaControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pga_home_url
    assert_response :success
  end

end
