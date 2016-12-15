
$( document ).ready( function () {

  $( "button" ).click(function () {
    if ( $( "div" ).is( ":hidden" ) ) {
      $( "div" ).slideDown( "slow" );
    } else {
      $( "div" ).hide();
    }
  });

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
