require "test_helper"

class PoissonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @poisson = poissons(:one)
  end

  test "should get index" do
    get poissons_url
    assert_response :success
  end

  test "should get new" do
    get new_poisson_url
    assert_response :success
  end

  test "should create poisson" do
    assert_difference("Poisson.count") do
      post poissons_url, params: { poisson: { k: @poisson.k, lamdapar: @poisson.lamdapar } }
    end

    assert_redirected_to poisson_url(Poisson.last)
  end

  test "should show poisson" do
    get poisson_url(@poisson)
    assert_response :success
  end

  test "should get edit" do
    get edit_poisson_url(@poisson)
    assert_response :success
  end

  test "should update poisson" do
    patch poisson_url(@poisson), params: { poisson: { k: @poisson.k, lamdapar: @poisson.lamdapar } }
    assert_redirected_to poisson_url(@poisson)
  end

  test "should destroy poisson" do
    assert_difference("Poisson.count", -1) do
      delete poisson_url(@poisson)
    end

    assert_redirected_to poissons_url
  end
end
