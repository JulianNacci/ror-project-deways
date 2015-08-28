class PagesController < ApplicationController
  def home
    @address = Address.near(params[:address], 10)

  end

end
