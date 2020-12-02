class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def customer?
    type == 'Customer'
  end

  def owner?
    type == 'Owner'
  end

  validates_presence_of :name
  validates_presence_of :nric
end
