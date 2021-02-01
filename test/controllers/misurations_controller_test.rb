require 'test_helper'

class MisurationsControllerTest < ActionDispatch::IntegrationTest
  setup :initialize_log_in
  def initialize_log_in
    @sensor = sensors(:one)
    @misuration = misurations(:one)
  end
    

  test "should get index" do
    get '/users/sign_in'
    sign_in users(:user_001)
    post user_session_path
    get misurations_url
    assert_response :success
  end

  test "should get new" do
    get '/users/sign_in'
    sign_in users(:user_001)
    post user_session_path
    get new_misuration_url
    assert_response :success
  end

  test "should create misuration" do
    get '/users/sign_in'
    sign_in users(:user_001)
    post user_session_path
    assert_difference('Misuration.count',1) do
      post misurations_url, params: { misuration: { mac: @misuration.mac, unit: @misuration.unit, value: @misuration.value } }
    end

    assert_redirected_to misuration_url(Misuration.last)
  end

  test "should show misuration" do
    get '/users/sign_in'
    sign_in users(:user_001)
    post user_session_path
    get misuration_path(@misuration)
    assert_response :success
  end

  test "should get edit" do
    get '/users/sign_in'
    sign_in users(:user_001)
    post user_session_path
    get edit_misuration_url(@misuration)
    assert_response :success
  end

  test "should update misuration" do
    get '/users/sign_in'
    sign_in users(:user_001)
    post user_session_path
    patch misuration_url(@misuration), params: { misuration: { mac: @misuration.mac, unit: @misuration.unit, value: @misuration.value, id: @misuration.id} }
    assert_redirected_to misuration_url(@misuration)
  end

  test "should destroy misuration" do
    get '/users/sign_in'
    sign_in users(:user_001)
    post user_session_path
    assert_difference('Misuration.count', -1) do
      delete misuration_url(@misuration)
    end

    assert_redirected_to misurations_url
  end
end
