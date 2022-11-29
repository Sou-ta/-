class AddPaidAddDay < ActiveRecord::Migration[6.1]
  def up
    change_column :paids, :add_day , :integer, default: 15, null: false
  end
end
