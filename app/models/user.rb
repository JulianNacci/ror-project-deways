class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_attached_file :picture,
    styles: { medium: "300x300>", thumb: "100x100>" }, :default_url => "/images/:style/missing.png"

  validates_attachment_content_type :picture,
    content_type: /\Aimage\/.*\z/

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  # validates_presence_of :first_name
  # validates_presence_of :last_name
  # validates_presence_of :address
  # validates_presence_of :phone_number
  has_many :bookings
  has_many :cars
end
