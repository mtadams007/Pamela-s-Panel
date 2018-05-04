class AdministratorsController < ApplicationController

  def index
    @administrators = Administrator.all
  end

  def create
    @administrator = Administrator.create(administrator_params)
    @profile = Profile.new
    redirect_to '/profiles/new'
  end

  def show
    @administrator = Administrator.find(params[:id])
  end

  def edit
    @administrator = Administrator.find(params[:id])
  end

  def update
    @administrator = Administrator.find(params[:id])
    @administrator.update(administrator_params)
    redirect_to '/administrators'
  end

  def destroy
    Administrator.find(params[:id]).destroy
    redirect_to '/administrators'
  end

  def new
    @administrator = Administrator.new
  end

  private

  def administrator_params
    params.require(:administrator).permit(:first_name, :last_name, :age, :education, :salary)
  end
end
