require 'test_helper'

class SensorTest < ActiveSupport::TestCase
 
  test 'invalid without url' do
    sensor = Sensor.new
    assert_not sensor.save , "Saved the article without a title"
  end

end
