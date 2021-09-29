class TripSerializer < ActiveModel::Serializer
  attributes :id, :status, :vehicle, :transport_company
  has_one :vehicle
  has_one :order
end
