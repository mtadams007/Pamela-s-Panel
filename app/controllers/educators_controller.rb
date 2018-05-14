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
    @educator.build_user(email:params[:email], password: '123456').save
  end

  def show
    if current_user.userable_type == "Administrator"
    @educator = Educator.find(params[:id])
    @color_scheme = House.find(@educator.house_id).name.downcase
  else
    redirect_to '/educators'
  end
  end

  def edit
    if current_user.userable_type == "Administrator"
    @educator = Educator.find(params[:id])
    @color_scheme = House.find(@educator.house_id).name.downcase
  else
    redirect_to '/educators'
  end
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
     if current_user.userable_type == "Administrator"
    @educator = Educator.new
    @houses = House.all
    @houses = @houses.sort_by{|house| house.points}
    @color_scheme = @houses[3].name.downcase
  else
    redirect_to '/educators'
  end
  end

  private

  def educator_params
    params.require(:educator).permit(:first_name, :last_name, :age, :education, :salary, :house_id)
  end
end
