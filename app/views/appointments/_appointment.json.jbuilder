json.extract! appointment, :id, :start, :end, :candidate_id, :faculty_id, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
