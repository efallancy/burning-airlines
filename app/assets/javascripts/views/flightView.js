var app = app || {};

app.FlightView = Backbone.View.extend( {
  el: "#flightsearch",

  events: {
    'click .seat': 'seatClicked'
  },

  seatClicked: function (e) {
    var thisFlight = this.model.toJSON();

    if ( thisFlight.user !== null ) {
    // this code should only run if e.currentTarget does not have class of .reserved
    var row = $(e.currentTarget).data("row");
    var column = $(e.currentTarget).data("column");
    console.log( row, column );
    $(e.currentTarget).toggleClass("taken");
    $( e.currentTarget ).html( thisFlight.user.first_name );
    // Create a new reservation model
    var reservation = new app.Reservation();
    // Now we need to set all the attributes of that Reservation model.

    reservation.set( {
      seat_row: row,
      seat_column: column,
      flight_id: thisFlight.id,
      user_id: thisFlight.user.id
    } );

    reservation.save();
    }
  else {
      alert("You Must Be Logged In To Book");
    }

    // Render the view





    // That reservation modelneeds to have a user_id of the current_user's id.
    // That reservation model needs to have a flight_id of the current_flight's id.
    // That reservation needs to be saved to the database.
  },

  render: function () {
    var reservationTemplate = _.template( $( "#FlightReservationTemplate" ).html() );

    var flightView = _.template( $( "#SingleSearchResultTemplate" ).html() );

    this.$el.html( "" );

    this.$el.append( reservationTemplate ); // This is basically dummy heading

    var thisFlight = this.model.toJSON();
    this.$el.append( flightView( thisFlight ) ); // Append the detail of the flight

    var rows = thisFlight.airplane.rows;
    var columns = thisFlight.airplane.columns;
    console.log(rows, columns);
    var drawSeatPlan = function ( rows, columns ) {
      for ( var i = 0; i < rows; i += 1 ) {
        var $row = $("<div>").addClass("row");

        for (var j = 0; j < columns; j += 1 ) {
          var $seat = $("<div>").addClass("seat");

          $seat.html( ( i + 1 ) + ( thisFlight.airplane_seat_column[ j ] ) ); // Change this to accept letters
          $seat.attr('id',( i+1 ) + ( thisFlight.airplane_seat_column[ j ] ) ); // Change this to accept alphabatical for column

          $seat.attr("data-row", i + 1);
          $seat.attr("data-column", thisFlight.airplane_seat_column[j]); // Change this to accept letters

          $row.append( $seat );
        }

        $( "#flightsearch" ).append( $row );
      }
    };

    var renderBookedSeatPlan = function () {
      var seats = $( ".seat" );

      var flightReservations = thisFlight.reservations;

      for ( var i = 0; i < seats.length; i++ ) {
        var seat = seats[ i ];

        for ( var j = 0; j < flightReservations.length; j++ ) {
          var seating = ( flightReservations[ j ].seat_row + flightReservations[ j ].seat_column );

           if ( seating === seat.id ) {
             var seatReserved = "#" + String( seat.id );
             console.log( seatReserved );
             if ( thisFlight.user !== null ) {
               if ( flightReservations[ j ].user_id === thisFlight.user.id ) {
                // seat.className = "seat taken";
                console.log( $( seatReserved ).html() );
                $( seatReserved ).css( "background", "tomato" );
                seat.innerHTML = thisFlight.user.first_name;
               }
               else {
                 $( seatReserved ).css( "background", "tomato" );
                 seat.innerHTML = "Sold";
               }
             }
             else {
               $( seatReserved ).css( "background", "tomato" );
               seat.innerHTML = "Sold";
             }
           }

        }
      }
    };
    drawSeatPlan(rows, columns);
    renderBookedSeatPlan();

    // debugger;
    var reservations = thisFlight.reservations;

    _.each(reservations, function(reservation) {
      console.log(reservation);



      // reservation's seat_row and seat_column
      // div's data-row and data-column
      // if those two things match, add the class of .reserved
    });

  }

} );
