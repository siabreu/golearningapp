require "rails_helper"

RSpec.describe "Home", type: :system do
  context "Logged out" do
    it "root page" do
      visit root_path

      expect(page).to have_content "Cursos"
      expect(page).to have_content "Alunos"
      expect(page).to have_content "Sign Up"
      expect(page).to have_content "Sign In"
      expect(page).to have_content "Venha fazer um curso para alavancar a sua carreira!"
    end
  end
end
