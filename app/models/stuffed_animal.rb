class StuffedAnimal < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy

  validates :name,
            :address,
            :description,
            :price,
            :species, presence: true
  validates :price, numericality: true
  validates :name, uniqueness: { scope: :user, message: "Déjà pris!" }
end
