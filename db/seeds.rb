# This is just as means of having initial data

# Worry not about the order of destroying the data.
# Just like to delete the dependencies first.
Reservation.destroy_all
Flight.destroy_all
User.destroy_all
Airplane.destroy_all

##There are 20 users, 2 airplanes, 6 flights and 20 reservations
## We are only using 1 airplane (named "a1") and 1 flight (named "f1").
## All 20 reservations refer to a reservation made on a1 and f1, Sydney to Melbourne


### Create User
u1 = User.create( {
  :first_name => "Amy",
  :last_name => "Winehouse",
  :email => "amywinehouse@ga.co",
  :username => "amywinehouse",
  :isadmin => true,
  :password => "chicken",
  :password_confirmation => "chicken"

} )

u2 = User.create( {
  :first_name => "Kurt",
  :last_name => "Cobain",
  :email => "kurt_cobain@ga.co",
  :username => "kurtc",
  :isadmin => false,
  :password => "chicken",
  :password_confirmation => "chicken"
} )

u3 = User.create( {
  :first_name => "Anton",
  :last_name => "Yulchin",
  :email => "anton_yulchin@ga.co",
  :username => "anton",
  :isadmin => false,
  :password => "chicken",
  :password_confirmation => "chicken"
} )

u4 = User.create( {
  :first_name => "Jimi",
  :last_name => "Hendrix",
  :email => "jimi_hendrix@ga.co",
  :username => "jimihendix",
  :isadmin => true,
  :password => "chicken",
  :password_confirmation => "chicken"
} )

u5 = User.create( {
  :first_name => "Rhys",
  :last_name => "Diab",
  :email => "rhys5690@gmail.com",
  :username => "rhys5690",
  :isadmin => false,
  :password => "chicken",
  :password_confirmation => "chicken"
} )

u6 = User.create( {
  :first_name => "John",
  :last_name => "Stupid",
  :email => "jstupid@gmail.com",
  :username => "jstupid",
  :isadmin => false,
  :password => "chicken",
  :password_confirmation => "chicken"
} )

u7 = User.create( {
  :first_name => "Blue",
  :last_name => "Whale",
  :email => "bluewhale@gmail.com",
  :username => "bluewhale",
  :isadmin => false,
  :password => "chicken",
  :password_confirmation => "chicken"
} )

u8 = User.create( {
  :first_name => "big",
  :last_name => "man",
  :email => "bigman@gmail.com",
  :username => "bigman",
  :isadmin => false,
  :password => "chicken",
  :password_confirmation => "chicken"
} )

u9 = User.create( {
  :first_name => "small",
  :last_name => "dog",
  :email => "smalldoggmail.com",
  :username => "smalldog",
  :isadmin => false,
  :password => "chicken",
  :password_confirmation => "chicken"
} )

u10 = User.create( {
  :first_name => "big",
  :last_name => "dog",
  :email => "bigdog@gmail.com",
  :username => "jstupid",
  :isadmin => false,
  :password => "chicken",
  :password_confirmation => "chicken"
} )

u11 = User.create( {
  :first_name => "mr",
  :last_name => "joe",
  :email => "mrjoe@gmail.com",
  :username => "mrjoe",
  :isadmin => false,
  :password => "chicken",
  :password_confirmation => "chicken"
} )

u12 = User.create( {
  :first_name => "tell",
  :last_name => "thedog",
  :email => "tellthedog@gmail.com",
  :username => "tellthedog",
  :isadmin => false,
  :password => "chicken",
  :password_confirmation => "chicken"
} )

u13 = User.create( {
  :first_name => "ilikecheese",
  :last_name => "yes",
  :email => "ilikecheese@gmail.com",
  :username => "ilikecheese",
  :isadmin => false,
  :password => "chicken",
  :password_confirmation => "chicken"
} )

u14 = User.create( {
  :first_name => "stop",
  :last_name => "stopit",
  :email => "stopit@gmail.com",
  :username => "stopit",
  :isadmin => false,
  :password => "chicken",
  :password_confirmation => "chicken"
} )

u15 = User.create( {
  :first_name => "hi",
  :last_name => "there",
  :email => "hithere@gmail.com",
  :username => "hithere",
  :isadmin => false,
  :password => "chicken",
  :password_confirmation => "chicken"
} )

u16 = User.create( {
  :first_name => "go",
  :last_name => "away",
  :email => "goaway@gmail.com",
  :username => "jstupid",
  :isadmin => false,
  :password => "chicken",
  :password_confirmation => "chicken"
} )

u17 = User.create( {
  :first_name => "never",
  :last_name => "gone",
  :email => "nevergone@gmail.com",
  :username => "nevergone",
  :isadmin => false,
  :password => "chicken",
  :password_confirmation => "chicken"
} )

u18 = User.create( {
  :first_name => "ilike",
  :last_name => "dogs",
  :email => "ilikedogs@gmail.com",
  :username => "ilikedogs",
  :isadmin => false,
  :password => "chicken",
  :password_confirmation => "chicken"
} )

u19 = User.create( {
  :first_name => "ihatecats",
  :last_name => "yesido",
  :email => "ihatecats@gmail.com",
  :username => "ihatecats",
  :isadmin => false,
  :password => "chicken",
  :password_confirmation => "chicken"
} )

u20 = User.create( {
  :first_name => "mr",
  :last_name => "t",
  :email => "mrt@gmail.com",
  :username => "mrttoday",
  :isadmin => false,
  :password => "chicken",
  :password_confirmation => "chicken"
} )



### Airplane
a1 = Airplane.create( {
  :name => "737-800",
  :rows => 9,
  :columns => 5
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

f5 = Flight.create( {
  :flight_num => "I240",
  :origin => "Sydney",
  :destination => "Brisbane",
  :flight_datetime => DateTime.new( 2016, 12, 31 ),
  :airplane_id => a1.id
} )

f6 = Flight.create( {
  :flight_num => "I240",
  :origin => "Brisbane",
  :destination => "Sydney",
  :flight_datetime => DateTime.new( 2016, 12, 31 ),
  :airplane_id => a2.id
} )

### Reservation
r1 = Reservation.create( {
  :seat_row => "1",
  :seat_column => "A",
  :flight_id => f1.id,
  :user_id => u1.id
} )

r2 = Reservation.create( {
  :seat_row => "1",
  :seat_column => "B",
  :flight_id => f1.id,
  :user_id => u2.id
} )

r3 = Reservation.create( {
  :seat_row => "1",
  :seat_column => "C",
  :flight_id => f1.id,
  :user_id => u3.id
} )

r4 = Reservation.create( {
  :seat_row => "1",
  :seat_column => "D",
  :flight_id => f1.id,
  :user_id => u4.id
} )

r5 = Reservation.create( {
  :seat_row => "1",
  :seat_column => "E",
  :flight_id => f1.id,
  :user_id => u20.id
} )

r6 = Reservation.create( {
  :seat_row => "2",
  :seat_column => "A",
  :flight_id => f1.id,
  :user_id => u5.id
} )

r7 = Reservation.create( {
  :seat_row => "2",
  :seat_column => "B",
  :flight_id => f1.id,
  :user_id => u6.id
} )

r8 = Reservation.create( {
  :seat_row => "2",
  :seat_column => "C",
  :flight_id => f1.id,
  :user_id => u7.id
} )

r9 = Reservation.create( {
  :seat_row => "2",
  :seat_column => "D",
  :flight_id => f1.id,
  :user_id => u8.id
} )

r10 = Reservation.create( {
  :seat_row => "2",
  :seat_column => "E",
  :flight_id => f1.id,
  :user_id => u9.id
} )

r11 = Reservation.create( {
  :seat_row => "3",
  :seat_column => "A",
  :flight_id => f1.id,
  :user_id => u10.id
} )

r12 = Reservation.create( {
  :seat_row => "3",
  :seat_column => "B",
  :flight_id => f1.id,
  :user_id => u11.id
} )

r13 = Reservation.create( {
  :seat_row => "3",
  :seat_column => "C",
  :flight_id => f1.id,
  :user_id => u12.id
} )

r14 = Reservation.create( {
  :seat_row => "3",
  :seat_column => "D",
  :flight_id => f1.id,
  :user_id => u13.id
} )

r15 = Reservation.create( {
  :seat_row => "3",
  :seat_column => "E",
  :flight_id => f1.id,
  :user_id => u14.id
} )

r16 = Reservation.create( {
  :seat_row => "4",
  :seat_column => "A",
  :flight_id => f1.id,
  :user_id => u15.id
} )

r17 = Reservation.create( {
  :seat_row => "4",
  :seat_column => "B",
  :flight_id => f1.id,
  :user_id => u16.id
} )

r18 = Reservation.create( {
  :seat_row => "4",
  :seat_column => "C",
  :flight_id => f1.id,
  :user_id => u17.id
} )

r19 = Reservation.create( {
  :seat_row => "4",
  :seat_column => "E",
  :flight_id => f1.id,
  :user_id => u18.id
} )

r20 = Reservation.create( {
  :seat_row => "6",
  :seat_column => "C",
  :flight_id => f1.id,
  :user_id => u19.id
} )
