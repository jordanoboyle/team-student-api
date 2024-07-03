class StudentsController < ApplicationController

  def index
    @students = Student.all
    render template: "students/index"
  end

  def show
    @student = Student.find_by(id: params[:id])
    render template: "students/show"
  end

  def create
    @student = Student.new()
    @student.first_name = params[:first_name] 
    @student.last_name = params[:last_name] 
    @student.email = params[:email] 
    @student.phone_number = params[:phone_number] 
    @student.bio = params[:bio] 
    @student.linked_in_url = params[:linked_in_url] 
    @student.twitter_handle = params[:twitter_handle] 
    @student.blog_url = params[:blog_url] 
    @student.resume_url = params[:resume_url] 
    @student.github_url = params[:github_url] 
    @student.image = params[:image] 

    if @student.save
      render template: "students/show"
    else
      render json: {ERRORS: @students.errors.full_messages}
    end

  end

  def update
    @student = Student.find_by(id: params[:id])
    @student.first_name = params[:first_name]  || @student.first_name
    @student.last_name = params[:last_name] ||  @student.last_name
    @student.email = params[:email] ||  @student.email
    @student.phone_number = params[:phone_number] ||  @student.phone_number
    @student.bio = params[:bio] ||  @student.bio
    @student.linked_in_url = params[:linked_in_url] ||  @student.linked_in_url
    @student.twitter_handle = params[:twitter_handle] ||  @student.twitter_handle
    @student.blog_url = params[:blog_url] ||  @student.blog_url
    @student.resume_url = params[:resume_url] ||  @student.resume_url
    @student.github_url = params[:github_url] ||  @student.github_url
    @student.image = params[:image] ||  @student.image
    
    @student.save 
    render template: "students/show"
  end

  def destroy
    # @student = Student.find_by(id: params[:id])

    # if 
  end
end
