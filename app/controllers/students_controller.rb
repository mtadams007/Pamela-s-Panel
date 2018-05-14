class StudentsController < ApplicationController
  before_action :authenticate_user!

  def index
    @students = Student.all
    @houses = House.all
    @houses = @houses.sort_by{|house| house.points}
    @color_scheme = @houses[3].name.downcase
  end

  def create
    @student = Student.create(student_params)
    @student.build_user(email:params[:email], password: '654321').save
  end

  def show
    if current_user.userable_type == "Administrator"
      @student = Student.find(params[:id])
      @color_scheme = House.find(@student.house_id).name.downcase
    else
      redirect_to '/students'
    end
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
    params.require(:student).permit(:first_name, :last_name, :age, :education, :house_id)
  end
end
