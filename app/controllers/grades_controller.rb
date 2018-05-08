class GradesController < ApplicationController

  def index
    @cohort = Cohort.find(params[:cohort_id])
  end

  def new
    @cohort = Cohort.find(params[:cohort_id])
    @grade = Grade.new
    @students = []
    cohort_pupils = @cohort.students
    pupils = Student.all
    pupils.each do |pupil|
      if cohort_pupils.include? pupil
        puts '..........'
        puts '..........'
        puts '..........'
        puts '..........'
        puts '..........'
        puts '..........'
        puts '..........'
        puts 'here'
      else
        @students.push(pupil)
      end
    end

  end

  def create
    @grade = Grade.create(grade_params)
    redirect_to '/cohorts/1/grades'
  end

  def show
    @grade = Grade.find(params[:id])
  end

  def edit
    @cohort = Cohort.find(params[:cohort_id])
    @grade = Grade.find(params[:id])
    @student = Student.where(id: @grade.student_id)[0]

  end

  def update
    @grade = Grade.find(params[:id])
    @grade.update(grade_params)
    redirect_to "/cohorts/#{params[:cohort_id]}/"
  end

  private

  def grade_params
    params.require(:grade).permit(:student_id, :cohort_id, :mark)
  end
end
