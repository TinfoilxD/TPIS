json.extract! course, :id, :course_type_id, :course_start_date, :course_address, :course_city, :state, :country, :course_zipcode, :created_at, :updated_at
json.url course_url(course, format: :json)
