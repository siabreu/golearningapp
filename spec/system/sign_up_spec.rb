require "rails_helper"

RSpec.describe "New Sign Up", type: :system do
  context "Logged out" do
    let(:email) { "fulano@com" }

    it "loggin" do
      visit new_student_registration_path

      fill_in "Name", with: "Fulano"
      fill_in "Email", with: email
      fill_in "Password", with: "123456"
      fill_in "Password confirmation", with: "123456"

      click_on "Sign up"
      expect(page).to have_content "Venha fazer um curso para alavancar a sua carreira!"
    end
  end
end
