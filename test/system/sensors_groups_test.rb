require "application_system_test_case"

class SensorsGroupsTest < ApplicationSystemTestCase
  setup do
    @sensors_group = sensors_groups(:one)
  end

  test "visiting the index" do
    visit sensors_groups_url
    assert_selector "h1", text: "Sensors Groups"
  end

  test "creating a Sensors group" do
    visit sensors_groups_url
    click_on "New Sensors Group"

    fill_in "Id user group", with: @sensors_group.id_user_group
    fill_in "Nome", with: @sensors_group.nome
    click_on "Create Sensors group"

    assert_text "Sensors group was successfully created"
    click_on "Back"
  end

  test "updating a Sensors group" do
    visit sensors_groups_url
    click_on "Edit", match: :first

    fill_in "Id user group", with: @sensors_group.id_user_group
    fill_in "Nome", with: @sensors_group.nome
    click_on "Update Sensors group"

    assert_text "Sensors group was successfully updated"
    click_on "Back"
  end

  test "destroying a Sensors group" do
    visit sensors_groups_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sensors group was successfully destroyed"
  end
end
