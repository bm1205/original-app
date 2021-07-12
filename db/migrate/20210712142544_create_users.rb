class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :residence
      t.string :gender
      t.string :hobby
      t.string :introduction
      t.string :image
      t.integer :age
      
      t.timestamps
    end
  end
end
