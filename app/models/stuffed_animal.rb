class StuffedAnimal < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :reservations, dependent: :destroy

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  pg_search_scope :search_by_species,
                  against: [:species],
                  using: {
                    tsearch: { prefix: true }
                  }

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
