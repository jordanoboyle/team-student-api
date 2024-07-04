require "test_helper"

class StudentsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "create" do
    assert_difference "Student.count", 1 do
      post "/students.json", params: { first_name: "Test", last_name: "Test", email: "test@test.com", password: "password", password_confirmation: "password" }
      assert_response 201
    end
  end

  test "index" do
    get "/students.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Student.count, data.length
  end

  test "show" do
    get "/students/#{Student.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id",
    "first_name", 
    "last_name", 
    "email", 
    # "password_digest", 
    "phone_number",
    "bio",
    "linked_in_url",
    "twitter_handle",
    "blog_url",
    "resume_url",
    "github_url",
    "image", 
    "created_at", 
    "updated_at",
    "experiences"], data.keys
  end

  test "update" do
    student = Student.first
    patch "/students/#{student.id}.json", params: { first_name: "Updated name" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated name", data["first_name"]
  end

  test "destroy" do
    assert_difference "Student.count", -1 do
      delete "/students/#{Student.first.id}.json"
      assert_response 200
    end
  end
end
