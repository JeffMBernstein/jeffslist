class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.integer :price
      t.text :content
      t.string :location
      t.string :email

      t.timestamps
    end
  end
end