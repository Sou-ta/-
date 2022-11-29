class AddEventDayFinishToSchedules < ActiveRecord::Migration[6.1]
  def change
    add_column :schedules, :event_day_finish, :datetime
  end
end
