class BookingsController < ApplicationController
  before_action :set_car, only: [:create]

  def create
    #POST sur la page cars#show
    if user_signed_in?
      @booking = Booking.new
      @booking.car_id = @car.id
      @booking.user_id = current_user.id

      @booking.save ? (redirect_to pages_home_path) : ( raise render 'cars/show')

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

end
