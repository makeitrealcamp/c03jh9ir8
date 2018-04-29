require 'test_helper'

class AddControllerTest < ActionDispatch::IntegrationTest
  test "should get more" do
    get add_more_url
    assert_response :success
  end

end
