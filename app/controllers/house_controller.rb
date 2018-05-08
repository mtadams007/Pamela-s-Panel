class HouseController < ApplicationController
  def index
    @houses = House.all
    @houses = @houses.sort_by{|house| house.points}
  end

  def show
  end


def edit
  @house = House.find(params[:id])
end

def update
  @house = House.find(params[:id])
  @house.update(house_params)
  redirect_to '/house'
end

def house_params
  params.require(:house).permit(:points)
end
end
