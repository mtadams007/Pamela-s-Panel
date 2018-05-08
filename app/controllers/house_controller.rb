class HouseController < ApplicationController
  def index
    @houses = House.all
    @houses = @houses.sort_by{|house| house.points}
  end

  def show
  end
end
