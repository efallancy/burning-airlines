
json.extract! flight, :id, :flight_num, :origin, :destination, :created_at, :updated_at
json.flight_date flight.flight_datetime.strftime( "%d-%b-%Y" )
json.flight_time flight.flight_datetime.strftime( "%I:%M%p" )
json.airplane_name flight.airplane.name
json.airplane flight.airplane
json.airplane_seat_column ( "A".."Z" ).to_a

json.url flight_url(flight, format: :json)
