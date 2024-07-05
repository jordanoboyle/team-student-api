class SkillsController < ApplicationController
  def index
    @skills = Skill.all
    render :index
  end

  def show
    @skill = Skill.find_by(id: params[:id])
    render :show
  end

  def create
    @skill = Skill.new()
    @skill.student_id = params[:student_id]
    @skill.name = params[:name]
    
    if @skill.save
      render :show
    else
      render json: {ERRORS: @skill.errors.full_messages}
    end
  end

  def destroy
    @skill = Skill.find_by(id: params[:id])

    if @skill.destroy
      render json: {messages: "Skill removed"}
    else
      render json: {ERRORS: @skill.errors.full_messages}
    end
  end


end
