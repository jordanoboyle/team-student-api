class Student < ApplicationRecord
  has_many :experiences
  has_many :educations
  has_many :capstones
  has_many :skills
end
