class StudentsController < ApplicationController

  def index
    @students = Student.all
    render template: "students#index"
  end

  def show
    @student = Student.find_by(id: params[:id])
    render :show
  end

  def create
    render json: {messges: "Hello there!"}
  end

  def updated
    render json: {messges: "Hello there!"}
  end

  def destroy
    render json: {messges: "Hello there!"}
  end
end
