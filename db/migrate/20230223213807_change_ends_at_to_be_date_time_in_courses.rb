class ChangeEndsAtToBeDateTimeInCourses < ActiveRecord::Migration[7.0]
  def change
    change_column :courses, :ends_at, :datetime
  end
end
