require "test_helper"

class EducationsControllerTest < ActionDispatch::IntegrationTest
  def index
    @educations = Education.all
    render :index
  end
end
