class AddCoordinatesToStuffedAnimal < ActiveRecord::Migration[6.0]
  def change
    add_column :stuffed_animals, :latitude, :float
    add_column :stuffed_animals, :longitude, :float
  end
end
