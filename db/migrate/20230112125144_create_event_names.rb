class CreateEventNames < ActiveRecord::Migration[7.0]
  def change
    create_table :event_names do |t|
      t.string :name
      t.text :note

      t.timestamps
    end
  end
end
