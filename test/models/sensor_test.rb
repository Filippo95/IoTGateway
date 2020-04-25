require 'test_helper'

class SensorTest < ActiveSupport::TestCase
 
  	test "#sensor not valid without mac" do
		m = sensors(:no_mac)
		assert_equal m.valid?, false
	end

	test "#sensor public default value is false" do
		m = sensors(:no_public_value)
		m.validate
		assert_equal  false, m.public
	end


  
  




end
