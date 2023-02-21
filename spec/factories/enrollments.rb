FactoryBot.define do
  factory :enrollment do
    student { association :student }
    course { association :course }
  end
end
