class CreateEventPlaces < ActiveRecord::Migration[7.0]
  def change
    create_table :event_places do |t|
      t.string :name
      t.integer :max_entry
      t.text :note

      t.timestamps
    end
  end
end
