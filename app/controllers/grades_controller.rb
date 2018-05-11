class GradesController < ApplicationController

  def index
    @cohort = Cohort.find(params[:cohort_id])
    @houses = House.all
    @houses = @houses.sort_by{|house| house.points}
    @color_scheme = @houses[3].name.downcase
  end

  def new
    @cohort = Cohort.find(params[:cohort_id])
    @grade = Grade.new
    @students = []
    cohort_pupils = @cohort.students
    pupils = Student.all
    pupils.each do |pupil|
      if cohort_pupils.include? pupil
      else
        @students.push(pupil)
      end
    end
    @color_scheme = House.find(@cohort.educator.house_id).name.downcase
  end

  def create
    @grade = Grade.create(grade_params)
    redirect_to "/cohorts/#{params[:cohort_id]}/grades"
  end

  def show
    @grade = Grade.find(params[:id])
    @grade = Grade.find(params[:id])
    @student = Student.where(id: @grade.student_id)[0]
    @color_scheme = House.find(@student.house_id).name.downcase
  end

  def edit
    @cohort = Cohort.find(params[:cohort_id])
    @grade = Grade.find(params[:id])
    @student = Student.where(id: @grade.student_id)[0]
    @color_scheme = House.find(@student.house_id).name.downcase

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
