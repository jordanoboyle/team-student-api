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
    @experience = Experience.new()
    @experience.student_id = params[:student_id]
    @experience.company_name = params[:company_name]
    @experience.job_title = params[:job_title]
    @experience.start_date = params[:start_date]
    @experience.end_date = params[:end_date]
    @experience.description = params[:description]
    
    if @experience.save
      render template: "experiences/show"
    else
      render json: {ERRORS: experience.errors.full_messages}
    end
  end

  def update
    render json: {message: "hello there"}
  end

  def destroy
    render json: {message: "hello there"}
  end
end
