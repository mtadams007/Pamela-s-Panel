class EducatorsController < ApplicationController
  before_action :authenticate_user!

  def index
    @educators = Educator.all
    @houses = House.all
    @houses = @houses.sort_by{|house| house.points}
    @color_scheme = @houses[3].name.downcase
  end

  def create
    @educator = Educator.create(educator_params)
    @profile = Profile.new
    redirect_to '/profiles/new'
  end

  def show
    @educator = Educator.find(params[:id])
      @color_scheme = @educator.house.name.downcase
  end

  def edit
    @educator = Educator.find(params[:id])
    @color_scheme = @educator.house.name.downcase
  end

  def update
    @educator = Educator.find(params[:id])
    @educator.update(educator_params)
    redirect_to '/educators'
  end

  def destroy
    Educator.find(params[:id]).destroy
    redirect_to '/educators'
  end

  def new
    @educator = Educator.new
    @houses = House.all
    @houses = @houses.sort_by{|house| house.points}
    @color_scheme = @houses[3].name.downcase
  end

  private

  def educator_params
    params.require(:educator).permit(:first_name, :last_name, :age, :education, :salary)
  end
end
