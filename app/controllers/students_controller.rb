class StudentsController < ApplicationController

  def new
    @student = Student.new
    render :new
  end

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def create
    puts "I'm params #{params}"
    #@student = Student.new(params[:student])
    @student.save
  end

end
