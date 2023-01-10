require "test_helper"

class TicketShopsControllerTest < ActionDispatch::IntegrationTest
  test "should get select_place" do
    get ticket_shops_select_place_url
    assert_response :success
  end

  test "should get select_date" do
    get ticket_shops_select_date_url
    assert_response :success
  end

  test "should get select_time" do
    get ticket_shops_select_time_url
    assert_response :success
  end

  test "should get select_ticket" do
    get ticket_shops_select_ticket_url
    assert_response :success
  end

  test "should get buy_ticket" do
    get ticket_shops_buy_ticket_url
    assert_response :success
  end

  test "should get thanks" do
    get ticket_shops_thanks_url
    assert_response :success
  end
end
