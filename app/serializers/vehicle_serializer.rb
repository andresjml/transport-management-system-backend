class VehicleSerializer < ActiveModel::Serializer
  attributes :id, :v_type, :capacity, :transport_company
  #has_one :transport_company
end
