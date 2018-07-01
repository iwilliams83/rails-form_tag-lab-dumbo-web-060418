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
    byebug
    Student.create(params[:student])
    redirect_to posts_path
  end

end
