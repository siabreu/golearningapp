class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :enrollments, dependent: :destroy
  has_many :courses, through: :enrollments

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end
