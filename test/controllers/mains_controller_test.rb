require 'test_helper'

class MainsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get mains_new_url
    assert_response :success
  end

end
