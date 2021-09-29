class TripSerializer < ActiveModel::Serializer
  attributes :id, :status, :vehicle, :transport_company, :order
  has_one :vehicle
  #has_one :order
end
