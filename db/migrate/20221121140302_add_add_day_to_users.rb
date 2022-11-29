class AddAddDayToUsers < ActiveRecord::Migration[6.1]
  def up
    add_column :users, :day, :integer , default: 15, null: false
  end
end
