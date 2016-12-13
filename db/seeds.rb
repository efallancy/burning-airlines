# This is just as means of having initial data

# Worry not about the order of destroying the data.
# Just like to delete the dependencies first.
Reservation.destroy_all
Flight.destroy_all
User.destroy_all
Airplane.destroy_all

### Create User
u1 = User.create( {
  :first_name => "Amy",
  :last_name => "Winehouse",
  :email => "amywinehouse@ga.co",
  :username => "amywinehouse",
  :isadmin => false
} )

u2 = User.create( {
  :first_name => "Kurt",
  :last_name => "Cobain",
  :email => "kurt_cobain@ga.co",
  :username => "kurtc",
  :isadmin => false
} )

u3 = User.create( {
  :first_name => "Anton",
  :last_name => "Yulchin",
  :email => "anton_yulchin@ga.co",
  :username => "anton",
  :isadmin => false
} )

u4 = User.create( {
  :first_name => "Jimi",
  :last_name => "Hendrix",
  :email => "jimi_hendrix@ga.co",
  :username => "jimihendix",
  :isadmin => true
} )

### Airplane
a1 = Airplane.create( {
  :name => "737-800",
  :rows => 30,
  :columns => 6
} )

a2 = Airplane.create( {
  :name => "717-200",
  :rows => 25,
  :columns => 5
} )

### Flight
f1 = Flight.create( {
  :flight_num => "D250",
  :origin => "Sydney",
  :destination => "Melbourne",
  :flight_datetime => DateTime.new( 2016, 12, 30 ),
  :airplane_id => a1.id
} )

f2 = Flight.create( {
  :flight_num => "D260",
  :origin => "Melbourne",
  :destination => "Sydney",
  :flight_datetime => DateTime.new( 2016, 12, 30 ),
  :airplane_id => a2.id
} )

f3 = Flight.create( {
  :flight_num => "I420",
  :origin => "Christchurch",
  :destination => "Sydney",
  :flight_datetime => DateTime.new( 2016, 12, 31 ),
  :airplane_id => a1.id
} )

f4 = Flight.create( {
  :flight_num => "I240",
  :origin => "Sydney",
  :destination => "Christchurch",
  :flight_datetime => DateTime.new( 2016, 12, 31 ),
  :airplane_id => a2.id
} )

### Reservation
r1 = Reservation.create( {
  :seat_row => "4",
  :seat_column => "B",
  :flight_id => f3.id,
  :user_id => u3.id
} )

r2 = Reservation.create( {
  :seat_row => "8",
  :seat_column => "A",
  :flight_id => f1.id,
  :user_id => u1.id
} )

r3 = Reservation.create( {
  :seat_row => "9",
  :seat_column => "C",
  :flight_id => f2.id,
  :user_id => u4.id
} )

r4 = Reservation.create( {
  :seat_row => "2",
  :seat_column => "E",
  :flight_id => f4.id,
  :user_id => u2.id
} )
