class AddScheduleEventStatus < ActiveRecord::Migration[6.1]
  def change
     change_column :schedules, :event_status , :integer, default: 3, null: false
  end
end
