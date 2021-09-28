class VehicleSerializer < ActiveModel::Serializer
  attributes :id, :type, :capacity
  has_one :transport_company
end
