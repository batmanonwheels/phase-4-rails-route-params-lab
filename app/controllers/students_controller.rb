class StudentsController < ApplicationController

  def index
    if params.has_key?(:name)
      students = Student.where(first_name: params[:name].capitalize()).or(Student.where(last_name: params[:name].capitalize()))
    else
      students = Student.all
    end
    render json: students
  end

  def show
    render json: Student.find(params[:id])
  end

end
