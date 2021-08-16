class Reservation < ApplicationRecord
  belongs_to :stuffed_animal
  belongs_to :user

  AUTHORIZED_STATUS = %w[Pending Accepted Declined].freeze
  validates :start_date,
            :end_date, presence: true
  validates :status, inclusion: { in: AUTHORIZED_STATUS }
end
