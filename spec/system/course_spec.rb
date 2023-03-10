require "rails_helper"

RSpec.describe "Course#index", type: :system do
  context "Loggin" do
    let(:student) { create :student }
    let(:course) { create :course }
    let(:enrollment) { create :enrollment, course_id: course.id, student_id: student.id }

    before do
      login_as(student)
      enrollment
    end

    it "index" do
      visit courses_path

      expect(page).to have_content "Nome"
      expect(page).to have_content "Descrição"
      expect(page).to have_content "Nome"
      expect(page).to have_content "Início"
      expect(page).to have_content "Término"
      expect(page).to have_content "Status"

      expect(page).to have_content course.name
    end
  end
end
