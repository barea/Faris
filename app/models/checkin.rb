class Checkin < ApplicationRecord
  belongs_to :Store
  belongs_to :User
  end