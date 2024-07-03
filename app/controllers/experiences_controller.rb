class ExperiencesController < ApplicationController
  def index
    @experiences = Experience.all
    render template: "experiences/index" #Brad, I accidentally did not have "students" as a plural in the last one
  end

  def show
    @experience = Experience.find_by(id: params[:id])
    render :show
  end

  def create
    render json: {message: "hello there"}
  end

  def update
    render json: {message: "hello there"}
  end

  def destroy
    render json: {message: "hello there"}
  end
end
