class CreateShoes < ActiveRecord::Migration[7.0]
  def change
    create_table :shoes do |t|
      t.string :name
      t.string :image
      t.string :brand
      t.string :color
      t.integer :price

      t.timestamps
    end
  end
end
