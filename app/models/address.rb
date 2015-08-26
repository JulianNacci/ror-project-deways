class Address < ActiveRecord::Base
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  belongs_to :car
end
