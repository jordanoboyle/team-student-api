class StudentsController < ApplicationController
  # before_action :authenticate_user, only: [:create, :update, :destroy]


  def index
    @students = Student.all
    render :index
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
    @student.password = params[:password] 
    @student.password_confirmation = params[:password_confirmation] 
    

    if @student.save
      render json: {message: "Student Created Successfully"}, status: :created
    else
      render json: {ERRORS: @student.errors.full_messages}, status: :bad_request
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
    @student = Student.find_by(id: params[:id])
    if @student.destroy
      render json: {Message: "Account has been destroyed"}
    else
      render json: {ERRORS: @student.errors.full_messages}
    end
  end

  def current_student_info
    @student = current_user
    render :show
  end
end
