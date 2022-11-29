class AddScheduleIdToApplyPaid < ActiveRecord::Migration[6.1]
  def change
    add_column :apply_paids, :schedule_id, :integer
  end
end
