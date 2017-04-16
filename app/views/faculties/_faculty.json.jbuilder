json.extract! faculty, :id, :first_name, :last_name, :faculty_type,:training_center, :email, :phone, :office_address, :state, :zip_code, :country, :created_at, :updated_at
json.url faculty_url(faculty, format: :json)
