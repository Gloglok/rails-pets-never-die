class StuffedAnimal < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :reservations, dependent: :destroy

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :name,
            :address,
            :description,
            :price,
            :species, presence: true
  validates :price, numericality: true
  validates :name, uniqueness: { scope: :user, message: "Déjà pris!" }
end
