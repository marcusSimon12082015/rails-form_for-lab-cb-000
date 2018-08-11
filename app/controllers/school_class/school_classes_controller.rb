class SchoolClassesController < ApplicationController

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class.create(student_params(:title,:room_number))
    redirect_to student_path(@school_class)
  end

  def edit

  end

  def update

  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def student_params(*args)
    params.require(:school_class).permit(*args)
  end
end
