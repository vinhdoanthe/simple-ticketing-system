class TicketCategory < ApplicationRecord
  belongs_to :ticket
  belongs_to :category

  validates_uniqueness_of :ticket_id, scope: :category_id
end
