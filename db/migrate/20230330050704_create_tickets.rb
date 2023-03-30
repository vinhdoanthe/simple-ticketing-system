class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.string :status
      t.string :priority
      t.string :ticket_type

      t.timestamps
    end
  end
end
