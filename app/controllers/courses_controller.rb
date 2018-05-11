class CoursesController < ApplicationController

  def index
    @courses = Course.all
    @houses = House.all
    @houses = @houses.sort_by{|house| house.points}
    @color_scheme = @houses[3].name.downcase
  end

  def create
    @course = Course.create(course_params)
    redirect_to '/courses'
  end

  def show
    @course = Course.find(params[:id])
  end

  def edit
    @course = Course.find(params[:id])
    @houses = House.all
    @houses = @houses.sort_by{|house| house.points}
    @color_scheme = @houses[3].name.downcase
  end

  def update
    @course = Course.find(params[:id])
    @course.update(course_params)
    redirect_to '/courses'
  end

  def destroy
    Course.find(params[:id]).destroy
    redirect_to '/courses'
  end

  def new
    @course = Course.new
    @houses = House.all
    @houses = @houses.sort_by{|house| house.points}
    @color_scheme = @houses[3].name.downcase
  end

  private

  def course_params
    params.require(:course).permit(:name, :hours)
  end
end
