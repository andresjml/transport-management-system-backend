class OrderSerializer < ActiveModel::Serializer
  attributes :id, :volume, :status, :client
  has_one :client
  has_many :trips
end
