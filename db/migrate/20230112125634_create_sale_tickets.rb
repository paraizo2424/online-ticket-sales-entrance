class CreateSaleTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :sale_tickets do |t|
      t.integer :sale_id
      t.integer :ticket_id
      t.integer :count

      t.timestamps
    end
  end
end
