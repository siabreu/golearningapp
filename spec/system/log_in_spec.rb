require "rails_helper"

RSpec.describe "Log In", type: :system do
  context "try to login" do
    before do
      @student = create :student
      visit new_student_session_path
    end

    it "valid" do
      fill_in "Email", with: @student.email
      fill_in "Password", with: @student.password

      click_on "Log in"

      expect(page).to have_link "Sign Out"
      expect(page).to have_content "Olá #{@student.name}"
    end
  end
end
