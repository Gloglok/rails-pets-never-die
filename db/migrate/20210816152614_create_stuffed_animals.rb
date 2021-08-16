class CreateStuffedAnimals < ActiveRecord::Migration[6.0]
  def change
    create_table :stuffed_animals do |t|
      t.string :name
      t.string :species
      t.text :description
      t.string :adress
      t.float :weight
      t.references :user, null: false, foreign_key: true
      t.float :price
      t.date :rebirth_date

      t.timestamps
    end
  end
end
