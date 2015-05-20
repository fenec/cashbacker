class CreateBalances < ActiveRecord::Migration
  def change
    create_table :balances do |t|
      t.integer :user_id
      t.integer :amount, default: 0
      t.integer :available_for_withdrawal, default: 0

      t.timestamps
    end
  end
end
