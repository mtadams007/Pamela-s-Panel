class HouseController < ApplicationController
  before_action :authenticate_user!

  def index
    @houses = House.all
    @houses = @houses.sort_by{|house| house.points}
    @color_scheme = @houses[3].name.downcase
  end


  def edit
    @house = House.find(params[:id])
    @color_scheme = @house.name.downcase
  end

  def update
    @house = House.find(params[:id])
    @house.update(house_params)
    @houses = House.all
    @houses = @houses.sort_by{|house| house.points}
    @color_scheme = @houses[3].name.downcase
    redirect_to '/house'
  end

  def house_params
    params.require(:house).permit(:points)
  end
end
