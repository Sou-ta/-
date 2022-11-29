class CreateApplyPaids < ActiveRecord::Migration[6.1]
  def change
    create_table :apply_paids do |t|
      t.integer :user_id
      t.datetime :apply_day
      t.integer :reason
      t.integer :apply_status
      t.timestamps
    end
  end
end
