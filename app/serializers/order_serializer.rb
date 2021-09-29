class OrderSerializer < ActiveModel::Serializer
  attributes :id, :volume, :client
  has_one :client
  has_many :trips
end
