class Trip < ApplicationRecord
  belongs_to :vehicle
  belongs_to :order
  has_one :transport_company, through: :vehicle
end
