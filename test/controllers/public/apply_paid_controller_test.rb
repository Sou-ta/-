require "test_helper"

class Public::ApplyPaidControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get public_apply_paid_new_url
    assert_response :success
  end

  test "should get index" do
    get public_apply_paid_index_url
    assert_response :success
  end

  test "should get show" do
    get public_apply_paid_show_url
    assert_response :success
  end
end
