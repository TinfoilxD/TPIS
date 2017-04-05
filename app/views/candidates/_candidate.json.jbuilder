json.extract! candidate, :id, :first_name, :last_name, :address, :email, :phone, :fax, :city, :state_id, :zipcode, :country_id, :occupation, :alignment_type_id, :created_at, :updated_at
json.url candidate_url(candidate, format: :json)
