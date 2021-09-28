class ClientSerializer < ActiveModel::Serializer
  attributes :id, :name, :address
  has_one :route
end
