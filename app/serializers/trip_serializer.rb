class TripSerializer < ActiveModel::Serializer
  attributes :id, :status
  has_one :vehicle
  has_one :order
end
