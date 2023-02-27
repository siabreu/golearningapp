class AddIndexToStudentIdAndCourseIdInEnrollments < ActiveRecord::Migration[7.0]
  def change
    remove_index :enrollments, :student_id
    remove_index :enrollments, :course_id
    add_index :enrollments, [:student_id, :course_id], unique: true
  end
end
