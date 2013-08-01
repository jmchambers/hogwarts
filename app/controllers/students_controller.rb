class StudentsController < ApplicationController
  
  def index
    @students = Student.order(:name).all
  end
  
  def show
    @student = Student.find(params[:id])
  end
  
  def new
    @student = Student.new
  end
  
  def create
    @student = Student.new(params[:student])
    if @student.save
      redirect_to @student, notice: "#{@student.name} was successfully enrolled"
    else
      render action: "new"
    end
  end

end