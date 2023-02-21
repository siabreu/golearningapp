FactoryBot.define do
  factory :course do
    name { Faker::Educator.course_name }
    description { Faker::Lorem.paragraphs }
    starts_at { rand(1..7).days.ago.beginning_of_day }
    ends_at { (starts_at + rand(10..30).days).end_of_day }
  end
end
