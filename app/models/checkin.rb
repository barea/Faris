class Checkin < ApplicationRecord
  belongs_to :store
  belongs_to :user

  validates_presence_of :store_id
  validates_presence_of :user_id
  end