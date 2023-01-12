class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.integer :event_time_id
      t.string :name
      t.integer :price
      t.text :detail

      t.timestamps
    end
  end
end
