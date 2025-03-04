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
    @experience = Experience.find_by(id: 9)
    @experience.student_id = params[:student_id] || @experience.student_id
    @experience.company_name = params[:company_name] || @experience.company_name
    @experience.job_title = params[:job_title] || @experience.job_title
    @experience.start_date = params[:start_date] || @experience.start_date
    @experience.end_date = params[:end_date] || @experience.end_date
    @experience.description = params[:description] || @experience.description
    
    if @experience.save
      render template: "experiences/show"
    else
      render json: {ERRORS: @expriences.errors.full_messages}
    end
  end

  def destroy
    @experience = Experience.find_by(id: params[:id])

    if @experience.destroy
      render json: {message: "Experience has been removed"}
    else
      render json: {ERRORS: @experience.errors.full_messages}
    end
  end
end
