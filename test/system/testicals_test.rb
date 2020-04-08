require "application_system_test_case"

class TesticalsTest < ApplicationSystemTestCase
  setup do
    @testical = testicals(:one)
  end

  test "visiting the index" do
    visit testicals_url
    assert_selector "h1", text: "Testicals"
  end

  test "creating a Testical" do
    visit testicals_url
    click_on "New Testical"

    fill_in "Make", with: @testical.make
    fill_in "Model", with: @testical.model
    fill_in "Year", with: @testical.year
    click_on "Create Testical"

    assert_text "Testical was successfully created"
    click_on "Back"
  end

  test "updating a Testical" do
    visit testicals_url
    click_on "Edit", match: :first

    fill_in "Make", with: @testical.make
    fill_in "Model", with: @testical.model
    fill_in "Year", with: @testical.year
    click_on "Update Testical"

    assert_text "Testical was successfully updated"
    click_on "Back"
  end

  test "destroying a Testical" do
    visit testicals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Testical was successfully destroyed"
  end
end
