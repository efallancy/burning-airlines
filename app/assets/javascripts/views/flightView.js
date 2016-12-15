var app = app || {};

app.FlightView = Backbone.View.extend( {
  el: "#flightsearch",

  render: function () {
    var reservationTemplate = _.template( $( "#FlightReservationTemplate" ).html() );
    var flightView = _.template( $( "#SearchResultTemplate" ).html() );

    this.$el.html( "" );

    this.$el.append( reservationTemplate ); // This is basically dummy heading

    var thisFlight = this.model.toJSON();
    this.$el.append( flightView( thisFLight) ); // Append the detail of the flight

    var rows = thisFLight.airplane.rows;
    var columns = thisFLight.airplane.columns;
    console.log(rows, columns);

    var drawSeatPlan = function ( rows, columns ) {
      for ( var i = 0; i < rows; i += 1 ) {
        var $row = $("<div>").addClass("row");

        for (var j = 0; j < columns; j += 1 ) {
          var $seat = $("<div>").addClass("seat");

          $row.append( $seat );
        }

        $("#plane").append( $row );
      }
    };
    drawSeatPlan(rows, columns);
  }

} );
