require 'rails_helper'

RSpec.describe Enrollment, type: :model do
  subject { build(:enrollment) }

  describe "#course_id" do
    it { is_expected.to validate_presence_of(:course_id) }
    it { is_expected.to validate_uniqueness_of(:course_id).scoped_to(:student_id) }
  end

  describe "associations" do
    it { is_expected.to belong_to(:student) }
    it { is_expected.to belong_to(:course) }
  end
end
