require 'test_helper'

class MisurationSubscriptionsControllerTest < ActionDispatch::IntegrationTest
  setup :initialize_log_in
  def initialize_log_in
    @sensor = sensors(:one)
    @user = users(:user_001)
    @misuration_subscription = misuration_subscriptions(:one)
  end
 

  test "should get index" do
    get '/users/sign_in'
    sign_in users(:user_001)
    post user_session_path
    get misuration_subscriptions_url
    assert_response :success
  end

  test "should get new" do
    get '/users/sign_in'
    sign_in users(:user_001)
    post user_session_path
    get new_misuration_subscription_url
    assert_response :success
  end

  test "should create misuration_subscription" do
    get '/users/sign_in'
    sign_in users(:user_001)
    post user_session_path
    assert_difference('MisurationSubscription.count') do
      post misuration_subscriptions_url, params: { misuration_subscription: {id: @misuration_subscription.id, sensor_id: @misuration_subscription.sensor_id, user_id: @misuration_subscription.user_id } }
    end

    assert_redirected_to misuration_subscription_url(MisurationSubscription.last)
  end

  test "should show misuration_subscription" do
    get '/users/sign_in'
    sign_in users(:user_001)
    post user_session_path
    get misuration_subscription_url(@misuration_subscription)
    assert_response :success
  end

  test "should get edit" do
    get '/users/sign_in'
    sign_in users(:user_001)
    post user_session_path
    get edit_misuration_subscription_url(@misuration_subscription)
    assert_response :success
  end

  test "should update misuration_subscription" do
    get '/users/sign_in'
    sign_in users(:user_001)
    post user_session_path
    patch misuration_subscription_url(@misuration_subscription), params: { misuration_subscription: { id: @misuration_subscription.id ,sensor_id: @misuration_subscription.sensor_id, user_id: @misuration_subscription.user_id } }
    assert_redirected_to misuration_subscription_url(@misuration_subscription)
  end

  test "should destroy misuration_subscription" do
    get '/users/sign_in'
    sign_in users(:user_001)
    post user_session_path
    assert_difference('MisurationSubscription.count', -1) do
      delete misuration_subscription_url(@misuration_subscription)
    end

    assert_redirected_to misuration_subscriptions_url
  end
end
