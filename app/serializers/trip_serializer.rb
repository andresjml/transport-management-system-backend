class TripSerializer < ActiveModel::Serializer
  attributes :id, :status, :vehicle_id, :vehicle, :transport_company, :order
  #has_one :vehicle
  #has_one :order
end
