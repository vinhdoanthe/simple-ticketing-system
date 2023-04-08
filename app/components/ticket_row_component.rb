# frozen_string_literal: true

class TicketRowComponent < ViewComponent::Base
  with_collection_parameter :ticket

  def initialize(ticket:)
    @ticket = ticket
  end

end
