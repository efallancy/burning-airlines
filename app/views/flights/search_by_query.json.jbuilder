#json.array! @flights_by_query, partial: 'flights/flight', as: :flight
json.search @flights_by_query do | flight |
  json.flight_num flight.flight_num
  json.origin flight.origin
  json.destination flight.destination
  json.flight_datetime flight.flight_datetime
  json.airplane_id flight.airplane_id
end
