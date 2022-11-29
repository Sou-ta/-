require "test_helper"

class Public::ScheduleControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_schedule_index_url
    assert_response :success
  end

  test "should get show" do
    get public_schedule_show_url
    assert_response :success
  end
end
