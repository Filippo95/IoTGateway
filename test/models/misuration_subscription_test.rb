require 'test_helper'

class MisurationSubscriptionTest < ActiveSupport::TestCase
  test "misuration_subscriptions invalid without sensor_id" do
    m=misuration_subscriptions(:no_sensor_id)
    assert_equal m.valid?,false
  end

  test "misuration_subscriptions invalid without user_id" do
    m=misuration_subscriptions(:no_user_id)
    assert_equal m.valid?,false
  end
end
