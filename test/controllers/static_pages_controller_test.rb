require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pages_home_url
    assert_response :success
  end

  test "should get secret_pages" do
    get static_pages_secret_pages_url
    assert_response :success
  end

end
