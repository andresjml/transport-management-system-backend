class VehicleSerializer < ActiveModel::Serializer
  attributes :id, :v_type, :capacity
  has_one :transport_company
end
