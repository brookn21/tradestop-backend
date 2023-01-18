class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :img
      t.string :bio
      t.string :instagram
      t.string :twitter
      t.string :ebay
      t.string :grailed

      t.timestamps
    end
  end
end
