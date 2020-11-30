class Store < ApplicationRecord
  has_one :owner
  has_many :checkins
end
