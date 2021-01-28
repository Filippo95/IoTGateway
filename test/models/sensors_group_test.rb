require 'test_helper'

class SensorsGroupTest < ActiveSupport::TestCase
  test "sensors_group invalid without nome" do
    m=sensors_groups(:no_name)
    assert_equal m.valid?,false
  end

  test "sensors_group invalid without id_user_group" do
    m=sensors_groups(:no_id_user_group)
    assert_equal m.valid?,false
  end
end
