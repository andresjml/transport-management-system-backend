class TransportCompany < ApplicationRecord
    has_many :vehicles
    has_many :trips, through: :vehicles
end
