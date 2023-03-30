require "application_system_test_case"

class TicketCategoriesTest < ApplicationSystemTestCase
  setup do
    @ticket_category = ticket_categories(:one)
  end

  test "visiting the index" do
    visit ticket_categories_url
    assert_selector "h1", text: "Ticket categories"
  end

  test "should create ticket category" do
    visit ticket_categories_url
    click_on "New ticket category"

    fill_in "Category", with: @ticket_category.category_id
    fill_in "Ticket", with: @ticket_category.ticket_id
    click_on "Create Ticket category"

    assert_text "Ticket category was successfully created"
    click_on "Back"
  end

  test "should update Ticket category" do
    visit ticket_category_url(@ticket_category)
    click_on "Edit this ticket category", match: :first

    fill_in "Category", with: @ticket_category.category_id
    fill_in "Ticket", with: @ticket_category.ticket_id
    click_on "Update Ticket category"

    assert_text "Ticket category was successfully updated"
    click_on "Back"
  end

  test "should destroy Ticket category" do
    visit ticket_category_url(@ticket_category)
    click_on "Destroy this ticket category", match: :first

    assert_text "Ticket category was successfully destroyed"
  end
end
