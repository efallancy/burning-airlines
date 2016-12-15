
$( document ).ready( function () {

  if ( $( "#searchform" ).length > 0 ) {
    app.flights = new app.Flights();
    app.flights.fetch();
    

    app.router = new app.Router();
    Backbone.history.start();

  }

  if ( $( "#flightdetails" ).length > 0 ) {
    // Ignore temporarily
  }


} );
