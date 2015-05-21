class CreateActions < ActiveRecord::Migration
  def change
    create_table :actions do |t|
      t.integer :status
      t.integer :external_id
      t.integer :subid
      t.integer :amount
      t.integer :payment
      t.string :shop_name

      t.timestamps
    end
  end
end
