require "test_helper"

class StaffPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get signin" do
    get staff_pages_signin_url
    assert_response :success
  end

  test "should get index" do
    get staff_pages_index_url
    assert_response :success
  end

  test "should get qrcode_reader" do
    get staff_pages_qrcode_reader_url
    assert_response :success
  end

  test "should get buy_detail" do
    get staff_pages_buy_detail_url
    assert_response :success
  end
end
