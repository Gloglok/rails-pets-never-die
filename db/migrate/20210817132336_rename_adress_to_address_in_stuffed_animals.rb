class RenameAdressToAddressInStuffedAnimals < ActiveRecord::Migration[6.0]
  def change
    rename_column :stuffed_animals, :adress, :address
  end
end
