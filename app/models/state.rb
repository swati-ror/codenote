class State < ApplicationRecord
  has_many :cities
  belongs_to :address
end
