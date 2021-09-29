class Client < ApplicationRecord
  belongs_to :route
  has_many :orders
end
