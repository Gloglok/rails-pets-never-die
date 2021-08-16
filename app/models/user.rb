class User < ApplicationRecord
  has_many :stuffed_animal
  has_many :reservation
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :first_name,
            :last_name, presence: true
end
