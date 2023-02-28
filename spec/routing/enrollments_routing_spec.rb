require "rails_helper"

RSpec.describe EnrollmentsController, type: :routing do
  describe "routing" do
    it "routes to #create" do
      expect(get: "/enrollments").to route_to("enrollments#create")
    end
  end
end
