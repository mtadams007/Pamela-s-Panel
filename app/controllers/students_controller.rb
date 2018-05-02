class StudentsController < ApplicationController

  def index
    @student = Student.first
    puts 'students'
  end
end
