class City < ApplicationRecord
  belongs_to :state
  belongs_to :address
end
