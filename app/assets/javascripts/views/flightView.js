var app = app || {};

app.FlightView = Backbone.View.extend( {
  el: "#flightsearch",

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

          $row.append( $seat );
        }

        $("#plane").append( $row );
      }
    };
    drawSeatPlan(rows, columns);
  }

} );
