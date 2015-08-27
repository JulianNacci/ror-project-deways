class Car < ActiveRecord::Base
  has_attached_file :picture,
    styles: { medium: "300x300>", thumb: "100x100>" }

  validates_attachment_content_type :picture,
    content_type: /\Aimage\/.*\z/

  validates_presence_of :user_id

  belongs_to :user
  has_many :addresses, dependent: :destroy
  has_many :bookings, dependent: :destroy
  accepts_nested_attributes_for :addresses, reject_if: :all_blank, allow_destroy: true
end
