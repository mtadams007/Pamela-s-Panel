class LoginController < ApplicationController
  def index
    if user_signed_in?
      redirect_to '/house'
    else
    @houses = House.all
    @houses = @houses.sort_by{|house| house.points}
    @color_scheme = @houses[3].name.downcase
  end
  end
end
