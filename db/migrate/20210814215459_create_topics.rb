class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.integer :user_id
      t.string :post
      t.string :image
      t.string :category
      t.timestamps
    end
  end
end
