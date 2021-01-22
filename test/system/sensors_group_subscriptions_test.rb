require "application_system_test_case"

class SensorsGroupSubscriptionsTest < ApplicationSystemTestCase
  setup do
    @sensors_group_subscription = sensors_group_subscriptions(:one)
  end

  test "visiting the index" do
    visit sensors_group_subscriptions_url
    assert_selector "h1", text: "Sensors Group Subscriptions"
  end

  test "creating a Sensors group subscription" do
    visit sensors_group_subscriptions_url
    click_on "New Sensors Group Subscription"

    fill_in "Id sensor", with: @sensors_group_subscription.id_sensor
    fill_in "Id sensor group", with: @sensors_group_subscription.id_sensor_group
    click_on "Create Sensors group subscription"

    assert_text "Sensors group subscription was successfully created"
    click_on "Back"
  end

  test "updating a Sensors group subscription" do
    visit sensors_group_subscriptions_url
    click_on "Edit", match: :first

    fill_in "Id sensor", with: @sensors_group_subscription.id_sensor
    fill_in "Id sensor group", with: @sensors_group_subscription.id_sensor_group
    click_on "Update Sensors group subscription"

    assert_text "Sensors group subscription was successfully updated"
    click_on "Back"
  end

  test "destroying a Sensors group subscription" do
    visit sensors_group_subscriptions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sensors group subscription was successfully destroyed"
  end
end
