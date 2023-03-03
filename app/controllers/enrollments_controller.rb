class EnrollmentsController < ApplicationController
  before_action :authenticate_student!

  def create
    @enrollment = Enrollment.new(enrollment_params)

    respond_to do |format|
      if @enrollment.save
        format.html { redirect_back(fallback_location: root_path, notice: "registration completed.") }
      else
        format.html { redirect_to root_url, status: :unprocessable_entity, notice: "you are already enrolled in this course." }
      end
    end
  end

  private

    def enrollment_params
      params.permit(:student_id, :course_id)
    end
end
