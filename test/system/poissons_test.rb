require "application_system_test_case"

class PoissonsTest < ApplicationSystemTestCase
  setup do
    @poisson = poissons(:one)
  end

  test "visiting the index" do
    visit poissons_url
    assert_selector "h1", text: "Poissons"
  end

  test "should create poisson" do
    visit poissons_url
    click_on "New poisson"

    fill_in "K", with: @poisson.k
    fill_in "Lamdapar", with: @poisson.lamdapar
    click_on "Create Poisson"

    assert_text "Poisson was successfully created"
    click_on "Back"
  end

  test "should update Poisson" do
    visit poisson_url(@poisson)
    click_on "Edit this poisson", match: :first

    fill_in "K", with: @poisson.k
    fill_in "Lamdapar", with: @poisson.lamdapar
    click_on "Update Poisson"

    assert_text "Poisson was successfully updated"
    click_on "Back"
  end

  test "should destroy Poisson" do
    visit poisson_url(@poisson)
    click_on "Destroy this poisson", match: :first

    assert_text "Poisson was successfully destroyed"
  end
end
