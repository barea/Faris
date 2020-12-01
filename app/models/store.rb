class Store < ApplicationRecord
  belongs_to :user
  has_many :checkins

  validates_presence_of :user_id
end
