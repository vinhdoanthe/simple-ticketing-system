class Ticket < ApplicationRecord
  belongs_to :user
  has_rich_text :description
  has_many_attached :files

  validates :title , presence: true, length: { minimum: 10, maximum: 50}
end
