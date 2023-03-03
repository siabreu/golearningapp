require 'rails_helper'

RSpec.describe "EnrollmentsController", type: :request do
  describe "POST /enrollments" do
    let(:student) { create :student }
    let(:course) { create :course }

    before do
      login_as student
    end

    it "#create" do
      post "/enrollments", params: {student_id: student.id, course_id: course.id }

      expect(flash[:notice]).to eq("registration completed.")
      expect(response).to redirect_to(root_path)
    end
  end
end
