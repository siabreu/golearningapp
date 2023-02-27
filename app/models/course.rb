class Course < ApplicationRecord
  has_many :enrollments, dependent: :destroy
  has_many :students, through: :enrollments

  # scope
  scope :active, -> { where(" ? BETWEEN starts_at AND ends_at", Time.now) }

  def active?
    starts_at < Time.now && Time.now <= ends_at
  end
end
