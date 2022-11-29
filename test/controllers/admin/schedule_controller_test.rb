require "test_helper"

class Admin::ScheduleControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admin_schedule_new_url
    assert_response :success
  end

  test "should get index" do
    get admin_schedule_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_schedule_show_url
    assert_response :success
  end

  test "should get edit" do
    get admin_schedule_edit_url
    assert_response :success
  end
end
