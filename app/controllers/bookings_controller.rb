class BookingsController < ApplicationController
  before_action :set_car, only: [:show, :create]

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    if user_signed_in?
      @booking = Booking.new(booking_params)
      @booking.car_id = @car.id
      @booking.user_id = current_user.id
      @booking.save
      @car.available = false
      @car.save
      redirect_to car_booking_path(@car, @booking)
    else
      redirect_to new_user_session_path
    end
  end
  def edit
  end
  def update
  end
  def destroy
  end

  private

  def set_car
    @car = Car.find(params[:car_id])
  end

  def booking_params
    params.require(:booking).permit(:checkin_date, :checkout_date, :distance)
  end

end
