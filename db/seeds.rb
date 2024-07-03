# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


s = Student.create(first_name: "Luke", last_name: "Skywalker", email: "luke@email.com", password_digest: nil ,phone_number: "333-333-3333",bio: "I am a jedi knight!", linked_in_url: "linkedin.com/skywalker", twitter_handle: "linkedin.com/skywalker", blog_url: "skywalker.blog.com", resume_url: "lukes.resume.com", github_url: "lukes.resume.com", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6hurlmZ4DvORVGS4bASAq7UYNAGOlWS_83w&s")
s.save
s = Student.create(first_name: "Harley", last_name: "Quinn", email: "harley@email.com", password_digest: nil ,phone_number: "444-444-4444",bio: "I am the clown prince's girlfriend!", linked_in_url: "linkedin.com/quinn", twitter_handle: "Clown1", blog_url: "quinn.blog.com", resume_url: "harleys.resume.com", github_url: "harley.github.com", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6hurlmZ4DvORVGS4bASAq7UYNAGOlWS_83w&s")
s.save
s = Student.create(first_name: "Dick", last_name: "Grayson", email: "dick@email.com", password_digest: nil ,phone_number: "555-555-5555",bio: "I am the boy wonder, Batman's faithful sidekick. Until I became Nightwing.", linked_in_url: "linkedin.com/grayson", twitter_handle: "Robin1", blog_url: "grayson.blog.com", resume_url: "dick.resumes.com", github_url: "dick.github.com", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6hurlmZ4DvORVGS4bASAq7UYNAGOlWS_83w&s")
s.save






test_data = [
  ["University of Example", "Bachelor of Science in Computer Science", "September 2015", "June 2019", "Completed a comprehensive computer science program with a focus on software development and data structures.", ["Programming", "Data Structures", "Algorithms"], ["Smart Home Automation System", "Developed an IoT-based system to automate home appliances using a mobile application.", "http://example.com/capstone1"]],
  
  ["Example State University", "Master of Business Administration", "August 2016", "May 2018", "Specialized in business management and finance, gaining practical experience through internships and projects.", ["Business Strategy", "Financial Analysis", "Leadership"], ["Market Analysis Tool", "Created a tool to analyze market trends and assist in strategic decision making.", "http://example.com/capstone2"]],
  
  ["Tech University", "Bachelor of Engineering in Electrical Engineering", "September 2014", "June 2018", "Focused on electrical circuit design, power systems, and renewable energy technologies.", ["Circuit Design", "Power Systems", "Renewable Energy"], ["Solar Power Optimization", "Designed a system to optimize the efficiency of solar panels.", "http://example.com/capstone3"]],
  
  ["Innovative University", "Master of Science in Data Science", "September 2017", "June 2019", "Acquired skills in data analysis, machine learning, and big data technologies.", ["Data Analysis", "Machine Learning", "Big Data"], ["Predictive Analytics Model", "Developed a predictive model for financial forecasting using machine learning techniques.", "http://example.com/capstone4"]],
  
  ["Global University", "Bachelor of Arts in International Relations", "September 2013", "June 2017", "Studied global politics, economics, and cultural studies to understand international relations.", ["Global Politics", "Economic Analysis", "Cultural Studies"], ["International Trade Policies", "Analyzed the impact of trade policies on global economies.", "http://example.com/capstone5"]],
  
  ["Example Tech Institute", "Bachelor of Science in Information Technology", "September 2015", "June 2019", "Focused on IT infrastructure, network security, and systems administration.", ["IT Infrastructure", "Network Security", "Systems Administration"], ["Cybersecurity Framework", "Developed a framework to enhance cybersecurity measures in organizations.", "http://example.com/capstone6"]],
  
  ["Creative Arts University", "Bachelor of Fine Arts in Graphic Design", "September 2014", "June 2018", "Trained in visual communication, design principles, and digital media.", ["Graphic Design", "Digital Media", "Visual Communication"], ["Brand Identity Design", "Created a comprehensive brand identity for a local business.", "http://example.com/capstone7"]],
  
  ["Example Medical School", "Doctor of Medicine", "August 2012", "May 2016", "Completed rigorous medical training with clinical rotations in various specialties.", ["Clinical Skills", "Patient Care", "Medical Research"], ["Innovative Treatment Method", "Researched and proposed a new treatment method for a common disease.", "http://example.com/capstone8"]],
  
  ["Example Law School", "Juris Doctor", "September 2015", "June 2018", "Studied law, legal procedures, and completed internships at various legal institutions.", ["Legal Research", "Litigation", "Contract Law"], ["Legal Case Management System", "Developed a system to streamline the management of legal cases.", "http://example.com/capstone9"]],
  
  ["Example University", "Bachelor of Science in Environmental Science", "September 2014", "June 2018", "Focused on environmental policy, conservation, and sustainability practices.", ["Environmental Policy", "Conservation", "Sustainability"], ["Urban Green Spaces", "Designed a plan to increase green spaces in urban areas to improve air quality and community well-being.", "http://example.com/capstone10"]]
]




students = Student.all
i = 0

while i < students.length

  data = test_data[i]

  edu = Education.new()

  i+=1
end

