class AdministratorsController < ApplicationController
  before_action :authenticate_user!

  def index
    if current_user.userable_type == "Administrator"
      @color_scheme = 'gryffindor'
      @administrators = Administrator.all
    else
      redirect_to '/house'
    end
  end

  def create
    if current_user.userable_type == "Administrator"
      @administrator = Administrator.create(administrator_params)
      @administrator.build_user(email:params[:email], password: '123456').save
    else
      redirect_to '/house'
    end
  end

  def show
    if current_user.userable_type == "Administrator"
      @color_scheme = 'gryffindor'
      @administrator = Administrator.find(params[:id])
    else
      redirect_to '/house'
    end
  end

  def edit
    if current_user.userable_type == "Administrator"
      @color_scheme = 'gryffindor'
      @administrator = Administrator.find(params[:id])
    else
      redirect_to '/house'
    end
  end

  def update
    if current_user.userable_type == "Administrator"
      @administrator = Administrator.find(params[:id])
      @administrator.update(administrator_params)
      redirect_to '/administrators'
    else
      redirect_to '/house'
    end
  end

  def destroy
    if current_user.userable_type == "Administrator"
      Administrator.find(params[:id]).destroy
      redirect_to '/administrators'
    else
      redirect_to '/house'
    end
  end

  def new
    if current_user.userable_type == "Administrator"
      @color_scheme = 'gryffindor'
      @administrator = Administrator.new
    else
      redirect_to '/house'
    end
  end

  private

  def administrator_params
    params.require(:administrator).permit(:first_name, :last_name, :age, :education, :salary)
  end
end
