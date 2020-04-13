require "application_system_test_case"

class MisurationsTest < ApplicationSystemTestCase
  setup do
    @misuration = misurations(:one)
  end

  test "visiting the index" do
    visit misurations_url
    assert_selector "h1", text: "Misurations"
  end

  test "creating a Misuration" do
    visit misurations_url
    click_on "New Misuration"

    fill_in "Mac", with: @misuration.mac
    fill_in "Unit", with: @misuration.unit
    fill_in "Value", with: @misuration.value
    click_on "Create Misuration"

    assert_text "Misuration was successfully created"
    click_on "Back"
  end

  test "updating a Misuration" do
    visit misurations_url
    click_on "Edit", match: :first

    fill_in "Mac", with: @misuration.mac
    fill_in "Unit", with: @misuration.unit
    fill_in "Value", with: @misuration.value
    click_on "Update Misuration"

    assert_text "Misuration was successfully updated"
    click_on "Back"
  end

  test "destroying a Misuration" do
    visit misurations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Misuration was successfully destroyed"
  end
end
