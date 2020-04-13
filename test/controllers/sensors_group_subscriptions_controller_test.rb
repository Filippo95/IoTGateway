require 'test_helper'

class SensorsGroupSubscriptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sensors_group_subscription = sensors_group_subscriptions(:one)
  end

  test "should get index" do
    get sensors_group_subscriptions_url
    assert_response :success
  end

  test "should get new" do
    get new_sensors_group_subscription_url
    assert_response :success
  end

  test "should create sensors_group_subscription" do
    assert_difference('SensorsGroupSubscription.count') do
      post sensors_group_subscriptions_url, params: { sensors_group_subscription: { id_sensor: @sensors_group_subscription.id_sensor, id_sensor_group: @sensors_group_subscription.id_sensor_group } }
    end

    assert_redirected_to sensors_group_subscription_url(SensorsGroupSubscription.last)
  end

  test "should show sensors_group_subscription" do
    get sensors_group_subscription_url(@sensors_group_subscription)
    assert_response :success
  end

  test "should get edit" do
    get edit_sensors_group_subscription_url(@sensors_group_subscription)
    assert_response :success
  end

  test "should update sensors_group_subscription" do
    patch sensors_group_subscription_url(@sensors_group_subscription), params: { sensors_group_subscription: { id_sensor: @sensors_group_subscription.id_sensor, id_sensor_group: @sensors_group_subscription.id_sensor_group } }
    assert_redirected_to sensors_group_subscription_url(@sensors_group_subscription)
  end

  test "should destroy sensors_group_subscription" do
    assert_difference('SensorsGroupSubscription.count', -1) do
      delete sensors_group_subscription_url(@sensors_group_subscription)
    end

    assert_redirected_to sensors_group_subscriptions_url
  end
end
