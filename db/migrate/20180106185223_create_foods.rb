class CreateFoods < ActiveRecord::Migration[5.1]
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :category_id
      t.integer :calories
      t.integer :protein
      t.integer :carbs
      t.integer :fiber
      t.float :size_const

      t.timestamps
    end
  end
end
