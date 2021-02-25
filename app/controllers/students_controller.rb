class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new 
    @student = Student.new 
  end 

  def create 
    student_params = params.require(:student).permit(:first_name, :last_name)
    new_student = Student.create(student_params)
    redirect_to student_path(new_student)
  end 

end
