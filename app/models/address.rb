class Address < ApplicationRecord
  belongs_to :user
  belongs_to :state
  belongs_to :city
end
