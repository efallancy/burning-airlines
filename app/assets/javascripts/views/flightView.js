var app = app || {};

app.FlightView = Backbone.View.extend( {
  el: "#flightsearch",

  events: {
    'click .seat': 'seatClicked'
  },

  seatClicked: function (e) {
    $(e.currentTarget).css("background", "tomato");
    var row = $(e.currentTarget).data("row");
    var column = $(e.currentTarget).data("column");
    console.log( row, column );
    $(e.currentTarget).addClass("taken");
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
