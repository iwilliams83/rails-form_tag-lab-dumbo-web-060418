class StudentsController < ApplicationController

  def new
    # @student = Student.new
    # render :new
  end

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def create
    Student.create(params[:student])
    redirect_to students_path
  end

end
