class Address < ApplicationRecord
  belongs_to :user
  has_one :state
  has_one :city
  validates_presence_of :city
end
