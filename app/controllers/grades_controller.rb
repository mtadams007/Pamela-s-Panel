class GradesController < ApplicationController
  before_action :authenticate_user!

  def index
    @cohort = Cohort.find(params[:cohort_id])
    @houses = House.all
    @houses = @houses.sort_by{|house| house.points}
    @color_scheme = @houses[3].name.downcase
    if current_user.userable_type == "Administrator"

    elsif current_user.userable_type == "Educator" && @cohort.educator_id == current_user.userable_id

    else
      redirect_to '/courses'
    end
  end

  def new
    @cohort = Cohort.find(params[:cohort_id])
    if current_user.userable_type == "Administrator" || (current_user.userable_type == "Educator" && @cohort.educator_id == current_user.userable_id)

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
  else
    redirect_to '/courses'
  end
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

  def destroy
    @grade = Grade.find(params[:id])
    id = @grade.cohort_id
    @grade.destroy
    redirect_to "/cohorts/#{id}/grades"
  end

  private

  def grade_params
    params.require(:grade).permit(:student_id, :cohort_id, :mark)
  end
end
