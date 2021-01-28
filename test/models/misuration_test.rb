require 'test_helper'

class MisurationTest < ActiveSupport::TestCase
	#when a misuration is send the http request send mac address but not the sensor id 
	test "#from_mac_get_id_sensor" do
		m = misurations(:mac_valid)
		m.save
		assert_equal m.sensor_id,5
	end

	test "#test if mac is not provided" do
		m = misurations(:no_mac)
		assert_equal m.valid?, false
	end

	test "#test if value is not provided" do
		m=misurations(:no_value)
		assert_equal m.valid?,false
	end

	test "#test if unit is not provided" do
		m=misurations(:no_unit)
		assert_equal m.valid?,false
	end

	test "#test if the sensor is not present" do
		m = misurations(:sensor_not_present)
		assert_equal m.valid?, false
	end
  
end
