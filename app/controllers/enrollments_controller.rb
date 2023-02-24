class EnrollmentsController < ApplicationController
  before_action :authenticate_student!

  def create
    @enrollment = Enrollment.new(enrollment_params)
    if @enrollment.save
      redirect_to root_path, notice: "registration completed."
    end
  end

  private

    def enrollment_params
      params.permit(:student_id, :course_id)
    end
end
