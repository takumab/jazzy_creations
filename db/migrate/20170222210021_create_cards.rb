class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.string :title
      t.string :image_url
      t.text :description
      t.float :price

      t.timestamps
    end
    add_index :cards, :title
    add_index :cards, :image_url
    add_index :cards, :description
    add_index :cards, :price
  end
end
