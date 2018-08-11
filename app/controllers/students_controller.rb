class StudentsController < ApplicationController

  def new
    @student = Student.new
  end

  def create
    @student.create(student_params(:first_name,:last_name))
    redirect_to student_path(@student)
  end

  def edit

  end

  def update

  end

  def show
    @student = Student.find(params[:id])
  end

  def student_params(*args)
    params.require(:student).permit(*args)
  end
end
