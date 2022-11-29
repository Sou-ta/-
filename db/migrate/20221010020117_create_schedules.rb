class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.string :event_name
      t.datetime :event_day
      t.integer :event_status
      t.timestamps
    end
  end
end
