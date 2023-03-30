require "test_helper"

class TicketCategoryTest < ActiveSupport::TestCase
  def setup
    @ticket_category1 = ticket_categories(:one)
    @ticket_category2 = ticket_categories(:two)
  end

  test "ticket should be present" do
    @ticket_category1.ticket = nil
    assert_not @ticket_category1.valid?
  end

  test "category should be present" do
    @ticket_category1.category = nil
    assert_not @ticket_category1.valid?
  end

  test "pair of ticket and category should be unique" do
    @ticket_category1.save
    @ticket_category2.ticket = @ticket_category1.ticket
    @ticket_category2.category = @ticket_category1.category
    assert_not @ticket_category2.valid?
  end
end
