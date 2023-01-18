class CreateListings < ActiveRecord::Migration[7.0]
  def change
    create_table :listings do |t|
      t.string :title
      t.integer :size
      t.string :condition
      t.string :box_condition
      t.string :description
      t.float :price
      t.belongs_to :user, null: false, foreign_key: true
      t.string :img

      t.timestamps
    end
  end
end
