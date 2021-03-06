class CohortsController < ApplicationController
  before_action :authenticate_user!

  def index
    # if statements when i can finally log in...
    @cohorts = Cohort.where(course_id: params[:course_id])
    @houses = House.all
    @houses = @houses.sort_by{|house| house.points}
    @color_scheme = @houses[3].name.downcase
  end

  def new
    if current_user.userable_type == "Administrator"
    @cohort = Cohort.new
    @houses = House.all
    @houses = @houses.sort_by{|house| house.points}
    @color_scheme = @houses[3].name.downcase
  else
    redirect_to '/courses'
  end
  end

  def create
    @cohort = Cohort.create(cohort_params)
    redirect_to "/courses/#{@cohort.course_id}/cohorts"
  end

  def show

    @cohort = Cohort.find(params[:id])
    if current_user.userable_type == 'Administrator'
      redirect_to "/cohorts/#{params[:id]}/grades"
    elsif current_user.userable_type == "Educator" && @cohort.educator_id == current_user.userable_id
      redirect_to "/cohorts/#{params[:id]}/grades"
    else
      @color_scheme = House.find(@cohort.educator.house_id).name.downcase
    end

  end

  def edit
    if current_user.userable_type == "Administrator"
    @course = Course.find(params[:course_id])
    @cohort = Cohort.find(params[:id])
    @color_scheme = House.find(@cohort.educator.house_id).name.downcase
  else
    redirect_to '/courses'
  end
end

  def update
    @cohort = Cohort.find(params[:id])
    @cohort.update(cohort_params)
    redirect_to "/courses/#{@cohort.course.id}/cohorts"
  end

  def destroy
    @cohort = Cohort.find(params[:id])
    id = @cohort.course.id
    Cohort.find(params[:id]).destroy
    redirect_to "/courses/#{id}/cohorts"
  end

  private

  def cohort_params
    params.require(:cohort).permit(:name, :start, :end, :educator_id, :course_id)
  end

end
