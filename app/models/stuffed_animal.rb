class StuffedAnimal < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :reservations, dependent: :destroy

  validates :name,
            :address,
            :description,
            :price,
            :species, presence: true
  validates :price, numericality: true
  validates :name, uniqueness: { scope: :user, message: "Déjà pris!" }
  validates :photo, attached: true,
                    content_type: ['image/png', 'image/jpg', 'image/jpeg']
end
