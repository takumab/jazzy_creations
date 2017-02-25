class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :card_id
      t.float :total

      t.timestamps
    end
    add_index :orders, :user_id
    add_index :orders, :card_id
  end
end
