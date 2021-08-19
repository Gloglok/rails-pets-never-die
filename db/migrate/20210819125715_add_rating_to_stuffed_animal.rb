class AddRatingToStuffedAnimal < ActiveRecord::Migration[6.0]
  def change
    add_column :stuffed_animals, :rating, :float
    add_column :stuffed_animals, :vote, :float
  end
end
