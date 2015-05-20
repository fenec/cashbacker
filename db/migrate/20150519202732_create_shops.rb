class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :name
      t.text :url
      t.integer :hold_time
      t.string :reward_type
      t.float :reward_amount

      t.timestamps
    end
  end
end
