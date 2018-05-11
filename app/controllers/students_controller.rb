class StudentsController < ApplicationController

  def index
    @students = Student.all
    @houses = House.all
    @houses = @houses.sort_by{|house| house.points}
    @color_scheme = @houses[3].name.downcase
  end

  def create
    @student = Student.create(student_params)
    @profile = Profile.new
    redirect_to '/profiles/new'
  end

  def show
    @student = Student.find(params[:id])
    @color_scheme = House.find(@student.house_id).name.downcase
  end

  def edit
    @student = Student.find(params[:id])
    @color_scheme = House.find(@student.house_id).name.downcase
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    redirect_to '/students'
  end

  def destroy
    Student.find(params[:id]).destroy
    redirect_to '/students'
  end

  def new
    @student = Student.new
    @houses = House.all
    @houses = @houses.sort_by{|house| house.points}
    @color_scheme = @houses[3].name.downcase
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name, :age, :education)
  end
end
