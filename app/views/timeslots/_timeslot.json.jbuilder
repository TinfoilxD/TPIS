json.extract! timeslot, :id, :start, :end, :faculty_id, :created_at, :updated_at
json.url timeslot_url(timeslot, format: :json)
