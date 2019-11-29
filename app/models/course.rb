class Course < ActiveRecord::Base
  belongs_to :teacher
  has_many :lessons
  has_many :clas, through: :lessons

  validates :name, presence: true
  validates :grade, presence: true
  validates :department, presence: true
  validates :teacher_id, presence: true

  DEPARTMENTS = ["Mathematics", "English", "Computer Science", "Biology", "Chemistry", "Physics", "History"]
  GRADES = [1, 2, 3]
end
