require 'test_helper'

class MisurationSubscriptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @misuration_subscription = misuration_subscriptions(:one)
  end

  test "should get index" do
    get misuration_subscriptions_url
    assert_response :success
  end

  test "should get new" do
    get new_misuration_subscription_url
    assert_response :success
  end

  test "should create misuration_subscription" do
    assert_difference('MisurationSubscription.count') do
      post misuration_subscriptions_url, params: { misuration_subscription: { mac: @misuration_subscription.mac, user_id: @misuration_subscription.user_id } }
    end

    assert_redirected_to misuration_subscription_url(MisurationSubscription.last)
  end

  test "should show misuration_subscription" do
    get misuration_subscription_url(@misuration_subscription)
    assert_response :success
  end

  test "should get edit" do
    get edit_misuration_subscription_url(@misuration_subscription)
    assert_response :success
  end

  test "should update misuration_subscription" do
    patch misuration_subscription_url(@misuration_subscription), params: { misuration_subscription: { mac: @misuration_subscription.mac, user_id: @misuration_subscription.user_id } }
    assert_redirected_to misuration_subscription_url(@misuration_subscription)
  end

  test "should destroy misuration_subscription" do
    assert_difference('MisurationSubscription.count', -1) do
      delete misuration_subscription_url(@misuration_subscription)
    end

    assert_redirected_to misuration_subscriptions_url
  end
end
