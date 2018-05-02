class CoursesController < ApplicationController

  def index
    @course = Course.all
    puts 'yo yo yo im a course'
  end
end
