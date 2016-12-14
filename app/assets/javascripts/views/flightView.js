var app = app || {};

app.FlightView = Backbone.View.extend( {
  el: "#flightsearch",

  render: function () {
    var reservationTemplate = _.template( $( "#FlightReservationTemplate" ).html() );
    var flightView = _.template( $( "#SearchResultTemplate" ).html() );

    this.$el.html( "" );

    this.$el.append( reservationTemplate ); // This is basically dummy heading

    this.$el.append( flightView( this.model.toJSON() ) ); // Append the detail of the flight
  }

} );
