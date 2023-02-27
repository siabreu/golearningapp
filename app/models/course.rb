class Course < ApplicationRecord
  has_many :enrollments, dependent: :destroy
  has_many :students, through: :enrollments

  validates :name, presence: true
  validates :description, presence: true
  validates :starts_at, presence: true
  validates :ends_at, presence: true, comparison: { greater_than: :starts_at }

  # scope
  scope :active, -> { where(" ? BETWEEN starts_at AND ends_at", Time.now) }

  def active?
    starts_at < Time.now && Time.now <= ends_at
  end
end
