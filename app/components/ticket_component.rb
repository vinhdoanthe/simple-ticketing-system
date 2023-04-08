# frozen_string_literal: true

class TicketComponent < ViewComponent::Base
  def initialize(ticket:)
    @ticket = ticket
  end

end
