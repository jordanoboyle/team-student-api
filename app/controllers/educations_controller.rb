class EducationsController < ApplicationController

  def create
    @education = Education.create(
      student_id: params[:student_id],
      uni_name: params[:uni_name],
      degree_type: params[:degree_type],
      start_date: params[:start_date],
      end_date: params[:end_date],
      description: params[:description],
    )
    render :show
  end

  def index
    @educations = Education.all
    render :index
  end

  def show
    @education = Education.find_by(id: params[:id])
    render :show
  end

  def update
    @education = Education.find_by(id: params[:id])
    @education.update(
      student_id: params[:student_id] || @education.student_id,
      uni_name: params[:uni_name] || @education.uni_name,
      degree_type: params[:degree_type] || @education.degree_type,
      start_date: params[:start_date] || @education.start_date,
      end_date: params[:end_date] || @education.end_date,
    )
    render :show
  end

  def destroy
    @education = Education.find_by(id: params[:id])
    @education.destroy
    render json: { message: "Education destroyed successfully" }
  end
end
