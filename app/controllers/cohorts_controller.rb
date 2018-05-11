class CohortsController < ApplicationController

  def index
    # if statements when i can finally log in...
    @cohorts = Cohort.where(course_id: params[:course_id])
    @houses = House.all
    @houses = @houses.sort_by{|house| house.points}
    @color_scheme = @houses[3].name.downcase
  end

  def new
    @course = Course.find(params[:course_id])
    @cohort = Cohort.new
    @houses = House.all
    @houses = @houses.sort_by{|house| house.points}
    @color_scheme = @houses[0].name.downcase
  end

  def create
    @cohort = Cohort.create(cohort_params)

    redirect_to "/courses/#{@cohort.course.id}/cohorts"
  end

  def show
    @cohort = Cohort.find(params[:id])
    @color_scheme = House.find(@cohort.educator.house_id).name.downcase

  end

  def edit
    @course = Course.find(params[:course_id])
    @cohort = Cohort.find(params[:id])
    @color_scheme = House.find(@cohort.educator.house_id).name.downcase
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
