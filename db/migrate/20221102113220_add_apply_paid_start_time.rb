class AddApplyPaidStartTime < ActiveRecord::Migration[6.1]
  def change
    add_column :apply_paids, :start_time, :datetime
    add_column :apply_paids, :end_time, :datetime
  end
end
