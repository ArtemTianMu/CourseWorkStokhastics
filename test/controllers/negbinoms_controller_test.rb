require "test_helper"

class NegbinomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @negbinom = negbinoms(:one)
  end

  test "should get index" do
    get negbinoms_url
    assert_response :success
  end

  test "should get new" do
    get new_negbinom_url
    assert_response :success
  end

  test "should create negbinom" do
    assert_difference("Negbinom.count") do
      post negbinoms_url, params: { negbinom: { kparam: @negbinom.kparam, p: @negbinom.p, rparam: @negbinom.rparam } }
    end

    assert_redirected_to negbinom_url(Negbinom.last)
  end

  test "should show negbinom" do
    get negbinom_url(@negbinom)
    assert_response :success
  end

  test "should get edit" do
    get edit_negbinom_url(@negbinom)
    assert_response :success
  end

  test "should update negbinom" do
    patch negbinom_url(@negbinom), params: { negbinom: { kparam: @negbinom.kparam, p: @negbinom.p, rparam: @negbinom.rparam } }
    assert_redirected_to negbinom_url(@negbinom)
  end

  test "should destroy negbinom" do
    assert_difference("Negbinom.count", -1) do
      delete negbinom_url(@negbinom)
    end

    assert_redirected_to negbinoms_url
  end
end
