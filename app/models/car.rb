class Car < ActiveRecord::Base
  belongs_to :user
  has_many :address
  has_many :bookings
end
