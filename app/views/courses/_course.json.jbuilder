json.extract! course, :id, :name, :description, :starts_at, :ends_at, :created_at, :updated_at
json.url course_url(course, format: :json)
