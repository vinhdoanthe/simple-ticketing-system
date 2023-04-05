require "test_helper"

class Client::TicketsControllerTest < ActionDispatch::IntegrationTest
  test "should get list" do
    get client_tickets_list_url
    assert_response :success
  end

  test "should get show" do
    get client_tickets_show_url
    assert_response :success
  end

  test "should get pick" do
    get client_tickets_pick_url
    assert_response :success
  end
end
