class User < ApplicationRecord
  has_many :stuffed_animals, dependent: :destroy
  has_many :reservations, dependent: :destroy
  has_many :owner_reservations, through: :stuffed_animals, source: :reservations

  has_one_attached :avatar

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :first_name,
            :last_name, presence: true
end
