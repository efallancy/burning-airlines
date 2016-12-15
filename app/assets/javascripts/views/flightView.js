var app = app || {};

app.FlightView = Backbone.View.extend( {
  el: "#flightsearch",

  events: {
    'click .seat': 'seatClicked'
  },

  seatClicked: function (e) {
    var row = $(e.currentTarget).data("row");
    var column = $(e.currentTarget).data("column");
    console.log( row, column );
    $(e.currentTarget).toggleClass("taken");
    // Create a new reservation model
    var reservation = new app.Reservation();
    // Now we need to set all the attributes of that Reservation model.
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
    this.$el.append( flightView( thisFlight) ); // Append the detail of the flight

    var rows = thisFlight.airplane.rows;
    var columns = thisFlight.airplane.columns;
    console.log(rows, columns);

    var drawSeatPlan = function ( rows, columns ) {
      for ( var i = 0; i < rows; i += 1 ) {
        var $row = $("<div>").addClass("row");

        for (var j = 0; j < columns; j += 1 ) {
          var $seat = $("<div>").addClass("seat");

          $seat.html("r"+(i+1)+"c"+(j+1));
          $seat.attr('id', 'r'+(i+1)+'c'+(j+1));

          $seat.attr("data-row", i + 1);
          $seat.attr("data-column", j + 1);

          $row.append( $seat );
        }

        $("#flightsearch").append( $row );
      }
    };
    drawSeatPlan(rows, columns);
  }

} );
