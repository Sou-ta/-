require "test_helper"

class Admin::ApplyPaidControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_apply_paid_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_apply_paid_show_url
    assert_response :success
  end
end
