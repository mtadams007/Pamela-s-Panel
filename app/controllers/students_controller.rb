class StudentsController < ApplicationController

  def index
    @students = Student.all
    puts 'students'
  end


  def create
    Student.create(student_params)
    redirect_to '/students'
  end


  private

  def student_params
    params.require(:students).permit(:first_name, :last_name, :age, :education)
  end
end
