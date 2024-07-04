class CapstonesController < ApplicationController

  def index
    @capstones = Capstone.all
    render template: "capstones/index"

  end

  def show
    @capstone = Capstone.find_by(id: params[:id])
    
    render template: "capstones/show"
  end

  def create
    @capstone = Capstone.new()
    @capstone.student_id = params[:student_id]  # this param must exist when calling this route
    @capstone.title = params[:title]
    @capstone.description = params[:description]
    @capstone.url = params[:url]
    @capstone.image = params[:image]

    if @capstone.save
      render template: "capstones/show"
    else
      render json: {ERRORS: @capstone.errors.full_messages}
    end
  end

  def update
    @capstone = Capstone.find_by(id: params[:id])
    @capstone.title = params[:title] || @capstone.title
    @capstone.description = params[:description] || @capstone.description
    @capstone.image = params[:image] || @capstone.image
    @capstone.url = params[:url] || @capstone.url
    
    if @capstone.save
      render template: "capstones/show"
    else
      render json: {ERRORS: @capstones.errors.full_messages}
    end
  end

  def destroy
    @capstone = Capstone.find_by(id: params[:id])
    
    if @capstone.destroy
      render json: {messge: "Casptone information removed"}
    else
      render json: {ERRORS: @capstone.errors.full_messages} 
    end
  end
end
