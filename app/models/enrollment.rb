class Enrollment < ApplicationRecord
  validates :course_id, uniqueness: { scope: :student_id }

  belongs_to :course
  belongs_to :student
end
