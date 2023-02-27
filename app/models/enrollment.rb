class Enrollment < ApplicationRecord
  validates :student_id, presence: true
  validates :course_id, presence: true, uniqueness: { scope: :student_id }

  belongs_to :course
  belongs_to :student
end
