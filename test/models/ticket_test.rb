require "test_helper"

class TicketTest < ActiveSupport::TestCase

  def setup
    @ticket = tickets(:one)
  end

  test "title should be present" do
    @ticket.title = ""
    assert_not @ticket.valid?
  end

  test "title should not be too short" do
    # title should be at least 10 characters
    @ticket.title = "a" * 9
    assert_not @ticket.valid?
  end

  test "title should not be too long" do
    # title should be at most 500 characters
    @ticket.title = "a" * 501
    assert_not @ticket.valid?
  end

  test "user should be present" do
    @ticket.user = nil
    assert_not @ticket.valid?
  end
end
