require "test_helper"

class DebugPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get select_actor" do
    get debug_pages_select_actor_url
    assert_response :success
  end
end
