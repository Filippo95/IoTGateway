require 'test_helper'

class SensorsGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sensors_group = sensors_groups(:one)
  end

  test "should get index" do
    get sensors_groups_url
    assert_response :success
  end

  test "should get new" do
    get new_sensors_group_url
    assert_response :success
  end

  test "should create sensors_group" do
    assert_difference('SensorsGroup.count') do
      post sensors_groups_url, params: { sensors_group: { id_user_group: @sensors_group.id_user_group, nome: @sensors_group.nome } }
    end

    assert_redirected_to sensors_group_url(SensorsGroup.last)
  end

  test "should show sensors_group" do
    get sensors_group_url(@sensors_group)
    assert_response :success
  end

  test "should get edit" do
    get edit_sensors_group_url(@sensors_group)
    assert_response :success
  end

  test "should update sensors_group" do
    patch sensors_group_url(@sensors_group), params: { sensors_group: { id_user_group: @sensors_group.id_user_group, nome: @sensors_group.nome } }
    assert_redirected_to sensors_group_url(@sensors_group)
  end

  test "should destroy sensors_group" do
    assert_difference('SensorsGroup.count', -1) do
      delete sensors_group_url(@sensors_group)
    end

    assert_redirected_to sensors_groups_url
  end
end
