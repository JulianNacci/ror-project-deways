class PagesController < ApplicationController
  def home
    @address = Address.near(params[:address], 10)
  end

  def dashboard
    @bookings = current_user.bookings
  end
end
