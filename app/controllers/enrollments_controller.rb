class EnrollmentsController < ApplicationController
  before_action :authenticate_student!

  def create
    @enrollment = Enrollment.new(enrollment_params)
    message = "you are already enrolled in this course."

    message = "registration completed." if @enrollment.save
    redirect_to root_path, notice: message
  end

  private

    def enrollment_params
      params.permit(:student_id, :course_id)
    end
end
