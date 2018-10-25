require 'test_helper'

class BasicControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get basic_home_url
    assert_response :success
  end

end
