class ClientSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :route
  #has_one :route
  
end
