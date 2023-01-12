class CreateEventTimes < ActiveRecord::Migration[7.0]
  def change
    create_table :event_times do |t|
      t.integer :event_place_id
      t.integer :event_name_id
      t.datetime :entry_time
      t.datetime :exit_time
      t.integer :max_entry

      t.timestamps
    end
  end
end
