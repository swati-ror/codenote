class User < ApplicationRecord
  has_many :attendences
  has_secure_password

  validates :email, uniqueness: true
  validates_length_of :password, in: 4..20, on: :create
end
