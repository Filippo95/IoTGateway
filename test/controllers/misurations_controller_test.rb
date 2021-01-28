require 'test_helper'

class MisurationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @misuration = misurations(:one)
  end

  test "should get index" do
    get misurations_url
    assert_response :success
  end

  test "should get new" do
    get new_misuration_url
    assert_response :success
  end

  test "should create misuration" do
    assert_difference('Misuration.count',1) do
      post misurations_url, params: { misuration: { mac: @misuration.mac, unit: @misuration.unit, value: @misuration.value } }
    end

    assert_redirected_to misuration_url(Misuration.last)
  end

  test "should show misuration" do
    get misuration_url(@misuration)
    assert_response :success
  end

  test "should get edit" do
    get edit_misuration_url(@misuration)
    assert_response :success
  end

  test "should update misuration" do
    patch misuration_url(@misuration), params: { misuration: { mac: @misuration.mac, unit: @misuration.unit, value: @misuration.value } }
    assert_redirected_to misuration_url(@misuration)
  end

  test "should destroy misuration" do
    assert_difference('Misuration.count', -1) do
      delete misuration_url(@misuration)
    end

    assert_redirected_to misurations_url
  end
end
