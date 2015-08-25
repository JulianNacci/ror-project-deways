class CarsController < ApplicationController
  before_action :set_car, only: [:show, :update, :edit, :destroy]

  def index
    @cars = Car.all
  end

  def show
  end

  def new
    @car = Car.new
  end

  def edit

  end

  def update
    @car.update(car_params)
  end

  def create
    @car = Car.new(car_params)
    @car.save ? (redirect_to car_path(@car)) : (render 'new')
  end

  def destroy
    @car.destroy
  end

  private

  def set_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).permit(:make, :model, :motorisation, :category, :seats, :daily_rate, :description, :year, :gear_box, :doors, :gaz_consumption, :picture)
  end
end
