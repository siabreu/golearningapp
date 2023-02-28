require 'rails_helper'

RSpec.describe Student, type: :model do
  subject { build(:student) }

  describe "#name" do
    it { is_expected.to validate_presence_of(:name) }
  end

  describe "#email" do
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_uniqueness_of(:email).case_insensitive }
  end

  describe "associations" do
    it { is_expected.to have_many(:courses) }
    it { is_expected.to have_many(:enrollments) }
  end
end
