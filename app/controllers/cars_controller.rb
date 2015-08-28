class CarsController < ApplicationController
  before_action :set_car, only: [:show, :update, :edit, :destroy]

  def index

    @place = params[:place]

    if params[:place] != ''
      @page_title = params[:place]
      @addresses = Address.near(params[:place], 15)
      @cars = delete_doubles(@addresses)

      @markers = marker_map(@addresses)
      #raise
    else
      @cars = Car.all
      @addresses = find_car_address(@cars)
      @markers = marker_map(@addresses)
    end

    @ransack_params = params[:q] || {}
    @ransack = Car.ransack(@ransack_params)

    #params[:q] = Rails.cache.read("q")

    if params[:q]

      @cars = @ransack.result(distinct: true).includes(:addresses)

      @addresses = find_car_address(@cars)
      @markers = marker_map(@addresses)

    end
  end

  def show
    @addresses = @car.addresses
    @markers = marker_map(@addresses)
    @booking = Booking.new
  end

  def new
    if user_signed_in?
      @car = Car.new
      @car.addresses.build

    else
      redirect_to new_user_session_path
    end
  end

  def create
    @car = Car.new(car_params)
    @user = User.find(current_user.id)
    @car.user = @user
    @car.save ? (redirect_to car_path(@car)) : (render 'new')
  end

  def edit
    @car.addresses.build
  end

  def update
    @car.update(car_params)
    redirect_to car_path(@car)
  end

  def destroy
    @car.destroy
    redirect_to cars_path
  end

  private

  def set_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).permit(:make, :model, :motorisation, :category, :seats, :daily_rate, :description, :year, :gear_box, :doors, :gaz_consumption, :picture, addresses_attributes: [:id, :car_id, :address, :_destroy])
  end

  def set_user
  end

  def marker_map(elements)
    markers = Gmaps4rails.build_markers(elements) do |element, marker|
      marker.lat element.latitude
      marker.lng element.longitude
    end
    return markers
  end

  def find_car_address(cars)
    addresses =  []
      cars.each do |car|
        addresses.push(car.addresses.take)
      end
    return addresses
  end

  def delete_doubles(array_addresses)

    array_cars = []
      # Get rid of the addresses that have several pick up spot for the same car
      #we get an array containing all the unique car_id

      unique_car_id = array_addresses.map{|t| t.car_id}.uniq

      # We need to find the car associated

      unique_car_id.each do |car_id|
        car = Car.find(car_id)
        array_cars.push(car)
      end
      return array_cars
  end
end
