class Booking < ActiveRecord::Base

  validates_presence_of :car_id
  validates_presence_of :user_id
 # validates_uniqueness_of :car_id, scope: [:user_id]
  validates_presence_of :checkin_date, :checkout_date


  belongs_to :car
  belongs_to :user
  has_many :reviews
end
