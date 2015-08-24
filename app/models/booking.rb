class Booking < ActiveRecord::Base
  belongs_to :car
  belongs_to :user
  has_many :reviews
end
