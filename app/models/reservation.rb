class Reservation < ApplicationRecord
  belongs_to :stuffed_animal

  validates :start_date,
            :end_date, presence: true
end
