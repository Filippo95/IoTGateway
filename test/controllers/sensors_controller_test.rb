require 'test_helper'

class SensorsControllerTest < ActionDispatch::IntegrationTest
  def setup
    @sensor = sensors(:one)
    get '/users/sign_in'
    sign_in users(:user_001)
    post user_session_path
  end

  test "should get index" do
    #sign_in users(:user_001)
    #post user_session_path
    get sensors_path
    assert_response :success
  end

  test "should get new" do
    #sign_in users(:user_001)
    #post user_session_path
    get new_sensor_path
    assert_response :success
  end

  test "should create sensor" do
    #sign_in users(:user_001)
    #post user_session_path
    assert_difference('Sensor.count') do
      post sensors_path, params: { sensor: { downtime_to_alarm: "2020-03-31 15:46:34", last_firmware_update: "2020-03-31", latitudine: "complete1_latitudine", longitudine: "complete1_longitudine", mac: "01:23:47:67:89:A9", public: true, tipo: "complete2_tipo", unit_misura: "misura", url: "url" } }
    end

    assert_redirected_to sensor_url(Sensor.last)
  end

  test "should show sensor" do
    #sign_in users(:user_001)
    #post user_session_path
    get sensor_url(@sensor)
    assert_response :success
  end

  test "should get edit" do
    #sign_in users(:user_001)
    #post user_session_path
    get edit_sensor_url(@sensor)
    assert_response :success
  end

  test "should update sensor" do
    #sign_in users(:user_001)
    #post user_session_path
    patch sensor_path(@sensor), params: { sensor: { downtime_to_alarm: @sensor.downtime_to_alarm, last_firmware_update: @sensor.last_firmware_update, latitudine: @sensor.latitudine, longitudine: @sensor.longitudine, mac: @sensor.mac, public: @sensor.public, tipo: @sensor.tipo, unit_misura: @sensor.unit_misura, url: @sensor.url } }
    assert_redirected_to sensor_path(@sensor)
  end

  #test "should destroy sensor" do
    #sign_in users(:user_001)
    #post user_session_path
    #assert_difference('Sensor.count', -1) do
      #delete sensor_url(@sensor)
    #end

    #assert_redirected_to sensors_url
  #end
end
