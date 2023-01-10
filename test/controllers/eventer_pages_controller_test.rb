require "test_helper"

class EventerPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get signin" do
    get eventer_pages_signin_url
    assert_response :success
  end

  test "should get index" do
    get eventer_pages_index_url
    assert_response :success
  end

  test "should get add_event_place" do
    get eventer_pages_add_event_place_url
    assert_response :success
  end

  test "should get add_event_name" do
    get eventer_pages_add_event_name_url
    assert_response :success
  end

  test "should get add_event_time" do
    get eventer_pages_add_event_time_url
    assert_response :success
  end

  test "should get add_ticket" do
    get eventer_pages_add_ticket_url
    assert_response :success
  end

  test "should get add_staff" do
    get eventer_pages_add_staff_url
    assert_response :success
  end

  test "should get day_sales" do
    get eventer_pages_day_sales_url
    assert_response :success
  end

  test "should get day_sales_detail" do
    get eventer_pages_day_sales_detail_url
    assert_response :success
  end

  test "should get ticket_sales_detail" do
    get eventer_pages_ticket_sales_detail_url
    assert_response :success
  end
end
