class Owner < User
  has_many :checkins
  has_many :stores

  validates_presence_of :store_id
end