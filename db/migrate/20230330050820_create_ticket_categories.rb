class CreateTicketCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :ticket_categories do |t|
      t.references :ticket, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
