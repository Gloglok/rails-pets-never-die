class Reservation < ApplicationRecord
  belongs_to :stuffed_animal
  belongs_to :user

  AUTHORIZED_STATUS = %w[Pending Accepted Declined].freeze
  validates :start_date,
            :end_date, presence: true
  validates :status, inclusion: { in: AUTHORIZED_STATUS }

  def total_days
    (end_date - start_date).to_i
  end

  def total_price
    total_days * stuffed_animal.price
  end
end
