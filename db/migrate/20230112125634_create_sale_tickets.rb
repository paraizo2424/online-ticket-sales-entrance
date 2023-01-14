class CreateSaleTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :sale_tickets do |t|
      t.integer :sale_id
      t.integer :ticket_id
      t.integer :count

      t.timestamps
    end
    add_index :sale_tickets, :sale_id
    add_index :sale_tickets, :ticket_id
    add_index :sale_tickets, [:sale_id, :ticket_id], unique: true
  end
end
