class StuffedAnimal < ApplicationRecord
  belongs_to :user
  has_many :reservations

  validates :name,
            :adress,
            :description,
            :price,
            :species, presence: true
  validates :price, numericality: true
  validates :name, uniqueness: { scope: :user, message: "Déjà pris!" }
end
