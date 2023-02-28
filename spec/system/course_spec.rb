require "rails_helper"

RSpec.describe "Course#index", type: :system do
  context "Loggin" do
    before do
      student = Student.create!(name: "Fulano", email: "fulano@com", password: "123456")
      login_as student, scope: :student
      student
    end

    it "index" do
      visit courses_path

      expect(page).to have_content "Cursos"

    end
  end
end
