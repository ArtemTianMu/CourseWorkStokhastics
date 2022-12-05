require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get help" do
    get static_pages_help_url
    assert_response :success
  end

  test "should get theory" do
    get static_pages_theory_url
    assert_response :success
  end
end
