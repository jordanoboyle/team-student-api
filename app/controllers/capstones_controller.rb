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
    render json: {messge: "hello there"}
  end

  def update
    render json: {messge: "hello there"}
  end

  def destroy
    render json: {messge: "hello there"}
  end
end
