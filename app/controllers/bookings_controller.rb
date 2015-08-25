class BookingsController < ApplicationController
  before_action :set_car, only: [:new, :create]

  def index
  end
  def show
  end
  def new
    #GET sur la page cars#show
  end
  def create
    #POST sur la page cars#show
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
