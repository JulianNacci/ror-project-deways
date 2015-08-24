class Booking < ActiveRecord::Base
  belongs_to :cars
  belongs_to :users
end
