class OrderSerializer < ActiveModel::Serializer
  attributes :id, :volume
  has_one :client
  has_many :trips
end
