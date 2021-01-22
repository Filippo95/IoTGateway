require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
	test "#get_users_sensors" do 
		m = users(:sensor_owner)
		assert_equal m.sensors.count, 4
	end

	test "#get_subscribed_sensors returns correct value" do
		m = users(:no_sensor_owner_two_subscribed)
		assert_equal m.get_subscribed_sensors.count, 2
	end

  

  

end
