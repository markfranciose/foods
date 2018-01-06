class CreateServings < ActiveRecord::Migration[5.1]
  def change
    create_table :servings do |t|
      t.integer :food_id
      t.integer :number
      t.string :unit
      t.integer :grams
      t.timestamp :time
      t.float :precent

      t.timestamps
    end
  end
end
