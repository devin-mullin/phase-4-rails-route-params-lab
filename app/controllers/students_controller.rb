class StudentsController < ApplicationController

  def index
    students = if params[:name]
      students = Student.all.select { |student| student.first_name.downcase.include?(params[:name].downcase) || student.last_name.downcase.include?(params[:name].downcase)}
    else
      Student.all
    end 
    render json: students
  end

  def show
    students = Student.find(params[:id])
    render json: students
  end

end
