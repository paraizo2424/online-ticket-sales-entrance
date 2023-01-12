class CreateSales < ActiveRecord::Migration[7.0]
  def change
    create_table :sales do |t|
      t.integer :user_id
      t.integer :staff_id
      t.integer :status
      t.datetime :status_datetime
      t.string :url

      t.timestamps
    end
  end
end
