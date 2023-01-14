require "test_helper"

class QrcodesControllerTest < ActionDispatch::IntegrationTest
  test "should get reader" do
    get qrcodes_reader_url
    assert_response :success
  end

  test "should get generate" do
    get qrcodes_generate_url
    assert_response :success
  end
end
