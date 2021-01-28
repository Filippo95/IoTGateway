require 'test_helper'

class SensorsGroupSubscriptionTest < ActiveSupport::TestCase
  test "#not valid without id_sensor_group" do
    s=sensors_group_subscriptions(:no_id_sensor_group)
    assert_equal s.valid?,false
  end

  #test "#not valid without id_sensor" do
    #s=sensors_group_subscriptions(:no_id_sensor)
    #assert_equal s.valid?,false
  #end
end
