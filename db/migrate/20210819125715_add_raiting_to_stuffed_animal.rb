class AddRaitingToStuffedAnimal < ActiveRecord::Migration[6.0]
  def change
    add_column :stuffed_animals, :raiting, :float
    add_column :stuffed_animals, :vote, :float
  end
end
