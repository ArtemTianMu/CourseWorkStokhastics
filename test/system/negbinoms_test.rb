require "application_system_test_case"

class NegbinomsTest < ApplicationSystemTestCase
  setup do
    @negbinom = negbinoms(:one)
  end

  test "visiting the index" do
    visit negbinoms_url
    assert_selector "h1", text: "Negbinoms"
  end

  test "should create negbinom" do
    visit negbinoms_url
    click_on "New negbinom"

    fill_in "Kparam", with: @negbinom.kparam
    fill_in "P", with: @negbinom.p
    fill_in "Rparam", with: @negbinom.rparam
    click_on "Create Negbinom"

    assert_text "Negbinom was successfully created"
    click_on "Back"
  end

  test "should update Negbinom" do
    visit negbinom_url(@negbinom)
    click_on "Edit this negbinom", match: :first

    fill_in "Kparam", with: @negbinom.kparam
    fill_in "P", with: @negbinom.p
    fill_in "Rparam", with: @negbinom.rparam
    click_on "Update Negbinom"

    assert_text "Negbinom was successfully updated"
    click_on "Back"
  end

  test "should destroy Negbinom" do
    visit negbinom_url(@negbinom)
    click_on "Destroy this negbinom", match: :first

    assert_text "Negbinom was successfully destroyed"
  end
end
