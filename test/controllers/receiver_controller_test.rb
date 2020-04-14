require 'test_helper'

class ReceiverControllerTest < ActionDispatch::IntegrationTest
  test "should get recevie" do
    get receiver_recevie_url
    assert_response :success
  end

  test "should get state" do
    get receiver_state_url
    assert_response :success
  end

end
