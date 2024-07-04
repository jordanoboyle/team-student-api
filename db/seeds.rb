# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


s = Student.create(first_name: "Luke", last_name: "Skywalker", email: "luke@email.com", password: password, password_confirmation: password ,phone_number: "333-333-3333",bio: "I am a jedi knight!", linked_in_url: "linkedin.com/skywalker", twitter_handle: "linkedin.com/skywalker", blog_url: "skywalker.blog.com", resume_url: "lukes.resume.com", github_url: "lukes.resume.com", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6hurlmZ4DvORVGS4bASAq7UYNAGOlWS_83w&s")
s.save

s = Student.create(first_name: "Harley", last_name: "Quinn", email: "harley@email.com", password: password, password_confirmation: password ,phone_number: "444-444-4444",bio: "I am the clown prince's girlfriend!", linked_in_url: "linkedin.com/quinn", twitter_handle: "Clown1", blog_url: "quinn.blog.com", resume_url: "harleys.resume.com", github_url: "harley.github.com", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6hurlmZ4DvORVGS4bASAq7UYNAGOlWS_83w&s")
s.save
s = Student.create(first_name: "Dick", last_name: "Grayson", email: "dick@email.com", password: password, password_confirmation: password ,phone_number: "555-555-5555",bio: "I am the boy wonder, Batman's faithful sidekick. Until I became Nightwing.", linked_in_url: "linkedin.com/grayson", twitter_handle: "Robin1", blog_url: "grayson.blog.com", resume_url: "dick.resumes.com", github_url: "dick.github.com", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6hurlmZ4DvORVGS4bASAq7UYNAGOlWS_83w&s")
s.save






test_data = [
  [
    "University of Example", 
    "Bachelor of Science in Computer Science", 
    "September 2015", 
    "June 2019", 
    "Completed a comprehensive computer science program with a focus on software development and data structures.", 
    ["Programming", "Data Structures", "Algorithms"], 
    [
      ["Tech Corp", "Software Developer Intern", "June 2018", "August 2018", "Assisted in developing and testing new software features."],
      ["Web Solutions", "Junior Developer", "July 2019", "Present", "Worked on front-end and back-end development for various web projects."]
    ], 
    ["Smart Home Automation System", "Developed an IoT-based system to automate home appliances using a mobile application.", "http://example.com/capstone1"]
  ],
  [
    "Example State University", 
    "Master of Business Administration", 
    "August 2016", 
    "May 2018", 
    "Specialized in business management and finance, gaining practical experience through internships and projects.", 
    ["Business Strategy", "Financial Analysis", "Leadership"], 
    [
      ["Finance Group", "Financial Analyst Intern", "June 2017", "August 2017", "Analyzed financial statements and assisted in preparing reports."],
      ["Consulting Firm", "Business Consultant", "June 2018", "Present", "Provided strategic advice to clients to improve their business operations."]
    ], 
    ["Market Analysis Tool", "Created a tool to analyze market trends and assist in strategic decision making.", "http://example.com/capstone2"]
  ],
  [
    "Tech University", 
    "Bachelor of Engineering in Electrical Engineering", 
    "September 2014", 
    "June 2018", 
    "Focused on electrical circuit design, power systems, and renewable energy technologies.", 
    ["Circuit Design", "Power Systems", "Renewable Energy"], 
    [
      ["Power Solutions", "Electrical Engineering Intern", "June 2017", "August 2017", "Assisted in designing and testing electrical circuits."],
      ["Energy Innovations", "Electrical Engineer", "July 2018", "Present", "Worked on developing renewable energy solutions and improving power systems."]
    ], 
    ["Solar Power Optimization", "Designed a system to optimize the efficiency of solar panels.", "http://example.com/capstone3"]
  ],
  [
    "Innovative University", 
    "Master of Science in Data Science", 
    "September 2017", 
    "June 2019", 
    "Acquired skills in data analysis, machine learning, and big data technologies.", 
    ["Data Analysis", "Machine Learning", "Big Data"], 
    [
      ["DataCorp", "Data Science Intern", "June 2018", "August 2018", "Worked on data preprocessing and exploratory data analysis."],
      ["Analytics Solutions", "Data Scientist", "July 2019", "Present", "Developed machine learning models for predictive analytics."]
    ], 
    ["Predictive Analytics Model", "Developed a predictive model for financial forecasting using machine learning techniques.", "http://example.com/capstone4"]
  ],
  [
    "Global University", 
    "Bachelor of Arts in International Relations", 
    "September 2013", 
    "June 2017", 
    "Studied global politics, economics, and cultural studies to understand international relations.", 
    ["Global Politics", "Economic Analysis", "Cultural Studies"], 
    [
      ["International Organization", "Research Intern", "June 2016", "August 2016", "Assisted in researching global political trends and policies."],
      ["Global Consultancy", "Policy Analyst", "July 2017", "Present", "Analyzed international policies and provided strategic recommendations."]
    ], 
    ["International Trade Policies", "Analyzed the impact of trade policies on global economies.", "http://example.com/capstone5"]
  ],
  [
    "Example Tech Institute", 
    "Bachelor of Science in Information Technology", 
    "September 2015", 
    "June 2019", 
    "Focused on IT infrastructure, network security, and systems administration.", 
    ["IT Infrastructure", "Network Security", "Systems Administration"], 
    [
      ["IT Services", "IT Support Intern", "June 2018", "August 2018", "Provided technical support and assisted in network troubleshooting."],
      ["Secure Networks", "Network Administrator", "July 2019", "Present", "Managed network security and maintained IT infrastructure."]
    ], 
    ["Cybersecurity Framework", "Developed a framework to enhance cybersecurity measures in organizations.", "http://example.com/capstone6"]
  ],
  [
    "Creative Arts University", 
    "Bachelor of Fine Arts in Graphic Design", 
    "September 2014", 
    "June 2018", 
    "Trained in visual communication, design principles, and digital media.", 
    ["Graphic Design", "Digital Media", "Visual Communication"], 
    [
      ["Design Studio", "Graphic Design Intern", "June 2017", "August 2017", "Created visual content for marketing materials."],
      ["Creative Agency", "Graphic Designer", "July 2018", "Present", "Developed branding and design solutions for clients."]
    ], 
    ["Brand Identity Design", "Created a comprehensive brand identity for a local business.", "http://example.com/capstone7"]
  ],
  [
    "Example Medical School", 
    "Doctor of Medicine", 
    "August 2012", 
    "May 2016", 
    "Completed rigorous medical training with clinical rotations in various specialties.", 
    ["Clinical Skills", "Patient Care", "Medical Research"], 
    [
      ["General Hospital", "Medical Intern", "June 2015", "August 2015", "Assisted in patient care and medical procedures."],
      ["City Clinic", "Resident Physician", "July 2016", "Present", "Provided medical care and conducted clinical research."]
    ], 
    ["Innovative Treatment Method", "Researched and proposed a new treatment method for a common disease.", "http://example.com/capstone8"]
  ],
  [
    "Example Law School", 
    "Juris Doctor", 
    "September 2015", 
    "June 2018", 
    "Studied law, legal procedures, and completed internships at various legal institutions.", 
    ["Legal Research", "Litigation", "Contract Law"], 
    [
      ["Law Firm", "Legal Intern", "June 2017", "August 2017", "Assisted in legal research and case preparation."],
      ["Legal Associates", "Associate Attorney", "July 2018", "Present", "Handled litigation and contract law cases."]
    ], 
    ["Legal Case Management System", "Developed a system to streamline the management of legal cases.", "http://example.com/capstone9"]
  ],
  [
    "Example University", 
    "Bachelor of Science in Environmental Science", 
    "September 2014", 
    "June 2018", 
    "Focused on environmental policy, conservation, and sustainability practices.", 
    ["Environmental Policy", "Conservation", "Sustainability"], 
    [
      ["Environmental Agency", "Conservation Intern", "June 2017", "August 2017", "Worked on conservation projects and policy analysis."],
      ["Eco Solutions", "Environmental Scientist", "July 2018", "Present", "Developed sustainability plans and conducted environmental assessments."]
    ], 
    ["Urban Green Spaces", "Designed a plan to increase green spaces in urban areas to improve air quality and community well-being.", "http://example.com/capstone10"]
  ]
]




students = Student.all
i = 0

while i < students.length

  student = students[i]
  data = test_data[i]

  edu = Education.new(student_id: student.id, uni_name: data[0], degree_type: data[1], start_date: data[2], end_date: data[3], description: data[4])
  edu.save


  skills = data[5]
  experiences = data[6]
  capstone = data[7]


  skills.each do |skill|
    s = Skill.new(student_id: student.id, name: skill)
    s.save
  end

  experiences.each do |exp|
    e = Experience.new(student_id: student.id, company_name: exp[0], job_title: exp[1], start_date: exp[2], end_date: exp[3], description: exp[4])
    e.save
  end

  c = Capstone.new(student_id: student.id, title: capstone[0], description: capstone[1], url: capstone[2])
  c.save
  
  i+=1
end

