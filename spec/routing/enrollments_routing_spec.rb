require "rails_helper"

RSpec.describe EnrollmentsController, type: :routing do
  describe "routing" do
    it "routes to #create" do
      expect(post: "/enrollments?course_id=1&student_id=1").to route_to("enrollments#create", student_id: "1", course_id: "1")
    end
  end
end
