require 'test_helper'

class SensorTest < ActiveSupport::TestCase
 
  test "#sensor not valid without mac" do
		m = sensors(:no_mac)
		assert_equal m.valid?, false
	end

	test "#sensor not valid with incorrect mac" do
		m=sensors(:incorrect_mac)
		assert_equal m.valid?,false
	end

	test "#sensor not valid without latitudine" do
		m=sensors(:no_latitudine)
		assert_equal m.valid?,false
	end

	test "#sensor not valid without longitudine" do
		m=sensors(:no_longitudine)
		assert_equal m.valid?,false
	end

	test "#sensor not valid without unit_misura" do
		m=sensors(:no_unit_misura)
		assert_equal m.valid?,false
	end

	test "#sensor not valid without url" do
		m= sensors(:no_url)
		assert_equal m.valid?, false
	end

	test "#sensor not valid without user_id" do
		m=sensors(:no_owner)
		assert_equal m.valid?, false
	end

	test "#sensor public default value is false" do
		m = sensors(:no_public_value)
		m.validate
		assert_equal  false, m.public
	end


  
  




end
