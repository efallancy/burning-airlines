var app = app || {};

app.Flights = Backbone.Collection.extend({

  url: "/flights",

  model: app.Flight,

  initialize: function () {
    console.log( "A collection was being created" );

    this.on( "add", function ( flight ) {
      var flightListView = new app.FlightListView( {
        model: flight
      } );
      flightListView.render();
    })
  }

});
