var app = app || {};

app.Router = Backbone.Router.extend( {

  routes: {
    "": "initializeAppView",
    "flight/:id": "initializeFlightReservationView"
  },

  // This is for rendering the view when clicking a single flight
  //   and show the seating page as well
  initializeFlightReservationView: function ( modelId ) {
    $( "#flightsearch" ).html( "" ); // Just to clear out the view

    // Fetch the latest result and once it's done,
    //   render the view for that single view
    app.flights.fetch().done( function () {
      var flight = app.flights.findWhere( { id: Number( modelId ) } );
      var flightView = new app.FlightView( {
                        model: flight
                       });

      flightView.render();
    } );

  },

  // Initialise the view and render it
  //  Will be directed to search page
  initializeAppView: function () {
    var appView = new app.AppView();
    appView.render();
  }

} );
