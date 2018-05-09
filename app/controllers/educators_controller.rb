class EducatorsController < ApplicationController
  before_action :authenticate_user!

  def index
    @educators = Educator.all
  end

  def create
    @educator = Educator.create(educator_params)
    @profile = Profile.new
    redirect_to '/profiles/new'
  end

  def show
    @educator = Educator.find(params[:id])
  end

  def edit
    @educator = Educator.find(params[:id])
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
  end

  private

  def educator_params
    params.require(:educator).permit(:first_name, :last_name, :age, :education, :salary)
  end
end
