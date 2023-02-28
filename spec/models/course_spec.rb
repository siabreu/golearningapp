require 'rails_helper'

RSpec.describe Course, type: :model do
  subject { build(:course) }

  describe "#name" do
    it { is_expected.to validate_presence_of(:name) }
  end

  describe "#description" do
    it { is_expected.to validate_presence_of(:description) }
  end

  describe "#starts_at" do
    it { is_expected.to validate_presence_of(:starts_at) }
  end

  describe "#ends_at" do
    it { is_expected.to validate_presence_of(:ends_at) }

    it "ends_at cannot be less than start_at" do
      subject.ends_at = subject.starts_at - 20.days

      expect(subject).to be_invalid
      expect(subject.errors.attribute_names).to include :ends_at
    end
  end

  describe "scope active courses" do
    let(:course) { create :course, starts_at: 50.days.ago, ends_at: 30.days.ago }

    it "not in the list of active courses" do
      expect(Course.active).to_not include course
    end

    it "is in the list of active courses" do
      course.starts_at = 2.days.ago
      course.ends_at = 20.days.after
      course.save

      expect(Course.active).to include course
    end
  end

  describe "#active?" do
    let(:course) { create :course, starts_at: 2.days.ago, ends_at: 20.days.after }

    it "is active" do
      expect(course.active?).to be_truthy
    end

    it "is not active" do
      course.starts_at = 5.days.after
      expect(course.active?).to be_falsy
    end
  end

  describe "associations" do
    it { is_expected.to have_many(:students) }
    it { is_expected.to have_many(:enrollments) }
  end
end
