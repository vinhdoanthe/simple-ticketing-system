class Category < ApplicationRecord
  belongs_to :user
  has_rich_text :description

  validates :title , presence: true, length: { minimum: 3, maximum: 50}
end
