class BookingsController < ApplicationController
  before_action :set_car, only: [:show, :create]

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    # if user_signed_in?
    #   @booking = Booking.new(booking_params)
    #   @booking.car_id = @car.id
    #   @booking.user_id = current_user.id
    #   @booking.save
    #   @car.available = false
    #   @car.save
    #   redirect_to car_booking_path(@car, @booking)
    # else
    #   redirect_to new_user_session_path
    # end

    checkin_date = params[:booking][:checkin_date].to_datetime
    checkout_date = params[:booking][:checkout_date].to_datetime
    @booking = Booking.new(booking_params)
    if @car.available?(checkin_date, checkout_date)
      @booking.car = @car
      @booking.user = current_user
      if @booking.save
        redirect_to car_booking_path(@booking.car, @booking)
      else
        render "cars/show"
      end
    else
      flash[:alert] = "This car is not available on the requested period"
      render "cars/show"
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
    params.require(:booking).permit(:checkin_date, :checkout_date, :distance, :car_id)
  end

end
