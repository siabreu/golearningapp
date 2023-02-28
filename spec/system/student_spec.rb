require "rails_helper"

RSpec.describe "Student#index", type: :system do
  context "Loggin" do
    let(:student) { create :student }
    let(:course) { create :course }
    let(:enrollment) { create :enrollment, course_id: course.id, student_id: student.id }

    before do
      login_as(student)
      enrollment
    end

    it "index" do
      visit students_path

      expect(page).to have_content "Nome"
      expect(page).to have_content "Email"
      expect(page).to have_content student.name
      expect(page).to have_content student.email
    end
  end
end
