class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :operation_type
      t.integer :amount
      t.integer :user_id

      t.timestamps
    end
  end
end
