require "application_system_test_case"

class SensorsTest < ApplicationSystemTestCase
  setup do
    @sensor = sensors(:one)
  end

  test "visiting the index" do
    visit sensors_url
    assert_selector "h1", text: "Sensors"
  end

  test "creating a Sensor" do
    visit sensors_url
    click_on "New Sensor"

    fill_in "Downtime to alarm", with: @sensor.downtime_to_alarm
    fill_in "Last firmware update", with: @sensor.last_firmware_update
    fill_in "Latitudine", with: @sensor.latitudine
    fill_in "Longitudine", with: @sensor.longitudine
    fill_in "Mac", with: @sensor.mac
    fill_in "Owner", with: @sensor.owner
    check "Public" if @sensor.public
    fill_in "Tipo", with: @sensor.tipo
    fill_in "Unit misura", with: @sensor.unit_misura
    fill_in "Url", with: @sensor.url
    click_on "Create Sensor"

    assert_text "Sensor was successfully created"
    click_on "Back"
  end

  test "updating a Sensor" do
    visit sensors_url
    click_on "Edit", match: :first

    fill_in "Downtime to alarm", with: @sensor.downtime_to_alarm
    fill_in "Last firmware update", with: @sensor.last_firmware_update
    fill_in "Latitudine", with: @sensor.latitudine
    fill_in "Longitudine", with: @sensor.longitudine
    fill_in "Mac", with: @sensor.mac
    fill_in "Owner", with: @sensor.owner
    check "Public" if @sensor.public
    fill_in "Tipo", with: @sensor.tipo
    fill_in "Unit misura", with: @sensor.unit_misura
    fill_in "Url", with: @sensor.url
    click_on "Update Sensor"

    assert_text "Sensor was successfully updated"
    click_on "Back"
  end

  test "destroying a Sensor" do
    visit sensors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sensor was successfully destroyed"
  end
end
