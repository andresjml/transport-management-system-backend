class Vehicle < ApplicationRecord
  belongs_to :transport_company
  has_many :trips
end
