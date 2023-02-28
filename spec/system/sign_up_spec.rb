require "rails_helper"

RSpec.describe "New Sign Up", type: :system do
  let(:email) { "fulano@com" }
  let(:password) { Faker::Internet.password(min_length: 6) }

  context "Logged out" do
    before do
      visit new_student_registration_path
    end

    it "Sign up" do
      fill_in "Name", with: "Fulano"
      fill_in "Email", with: email
      fill_in "Password", with: password
      fill_in "Password confirmation", with: password

      click_on "Sign up"

      expect(page).to have_content "Venha fazer um curso para alavancar a sua carreira!"
      expect(page).to have_content "Olá Fulano"
    end

    it "invalid login with blank fields" do
      fill_in "Name", with: ""
      fill_in "Email", with: ""
      fill_in "Password", with: password
      fill_in "Password confirmation", with: "123456"

      click_on "Sign up"

      expect(page).to have_content "Name can't be blank"
      expect(page).to have_content "Email can't be blank"
      expect(page).to have_content "Password confirmation doesn't match Password"
    end

    it "invalid login email already exists" do
      student = create :student

      fill_in "Name", with: "Beltrano"
      fill_in "Email", with: student.email
      fill_in "Password", with: password
      fill_in "Password confirmation", with: password

      click_on "Sign up"

      expect(page).to have_content "Email has already been taken"
    end
  end
end
