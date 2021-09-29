class ClientSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :route, :orders
  #has_one :route
  
end
