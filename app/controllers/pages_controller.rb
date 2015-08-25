class PagesController < ApplicationController
  def home
    @user = User.last
  end
end
