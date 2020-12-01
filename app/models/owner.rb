class Owner < User
  has_many :checkins
  has_many :stores
end