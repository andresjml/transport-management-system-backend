class ClientSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :route, :orders
  #has_one :route
  #has_many :orders
end
