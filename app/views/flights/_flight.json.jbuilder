json.extract! flight, :id, :flight_num, :origin, :destination, :flight_datetime, :airplane_id, :created_at, :updated_at
json.url flight_url(flight, format: :json)