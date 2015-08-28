class Car < ActiveRecord::Base
  has_attached_file :picture,
    styles: { medium: "300x300>", thumb: "100x100>" }

  validates_attachment_content_type :picture,
    content_type: /\Aimage\/.*\z/

  validates_presence_of :user_id
  belongs_to :user
  has_many :addresses, dependent: :destroy
  has_many :bookings, dependent: :destroy




  def available?(first_day, last_day)
    output = true
    if self.bookings
      self.bookings.each do |booking|
        booking_intervall(booking)
        if (@booking_dates.include? first_day) || (@booking_dates.include? last_day)
          output = false
          break
        end
      end
    end
    output
  end

  private

  def booking_intervall(booking)
    @booking_dates = []
    day = booking.checkin_date
    while day <= booking.checkout_date do
      @booking_dates << day
      day += 1
    end
    return @booking_dates
  end
end
