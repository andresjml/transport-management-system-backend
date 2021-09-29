class TransportCompany < ApplicationRecord
    has_many :vehicles, dependent: :destroy
    has_many :trips, through: :vehicles
end
