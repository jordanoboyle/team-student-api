# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end



Student.create(first_name: "Luke", last_name: "Skywalker", email: "luke@email.com", password_digest: nil ,phone_number: "333-333-3333",bio: "I am a jedi knight!", linked_in_url: "linkedin.com/skywalker", twitter_handle: "linkedin.com/skywalker", blog_url: "skywalker.blog.com", resume_url: "lukes.resume.com", github_url: "lukes.resume.com", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6hurlmZ4DvORVGS4bASAq7UYNAGOlWS_83w&s")
Student.create(first_name: "Harley", last_name: "Quinn", email: "harley@email.com", password_digest: nil ,phone_number: "444-444-4444",bio: "I am the clown prince's girlfriend!", linked_in_url: "linkedin.com/quinn", twitter_handle: "Clown1", blog_url: "quinn.blog.com", resume_url: "harleys.resume.com", github_url: "harley.github.com", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6hurlmZ4DvORVGS4bASAq7UYNAGOlWS_83w&s")
Student.create(first_name: "Dick", last_name: "Grayson", email: "dick@email.com", password_digest: nil ,phone_number: "555-555-5555",bio: "I am the boy wonder, Batman's faithful sidekick. Until I became Nightwing.", linked_in_url: "linkedin.com/grayson", twitter_handle: "Robin1", blog_url: "grayson.blog.com", resume_url: "dick.resumes.com", github_url: "dick.github.com", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6hurlmZ4DvORVGS4bASAq7UYNAGOlWS_83w&s")