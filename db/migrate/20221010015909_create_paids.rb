class CreatePaids < ActiveRecord::Migration[6.1]
  def change
    create_table :paids do |t|
      t.integer :user_id
      t.integer :add_day
      t.integer :delete_day
      t.timestamps
    end
  end
end
