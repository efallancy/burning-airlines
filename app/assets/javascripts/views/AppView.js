var app = app || {};

app.AppView = Backbone.View.extend( {
  el: ".white_board",

  events: {
    "click button": "filterFlightSearch"
  },

  filterFlightSearch: function () {
    var origin = $( "#origin" ).val();
    var destination = $( "#destination" ).val();
    var flights = [];

    // Condition needed to match for searching evaluation on filtering
    if ( origin && destination ) {
      flights = app.flights.where( {
                  origin: $( "#origin" ).val(),
                  destination: $( "#destination" ).val()
                } );
    } else if ( origin && !destination ) {
      flights = app.flights.where( {
                  origin: $( "#origin" ).val()
                } );
      console.log( flights );
    } else if ( !origin && destination ) {
      flights = app.flights.where( {
                  destination: $( "#destination" ).val()
                } );
    } else {
      flights = app.flights.where(); // This shall return all the result
    }

    if ( flights.length ) {
      $( "#searchresult" ).html( "" ); // Empty previous result

      _.each( flights, function ( flight ) {
        var flightListView = new app.FlightListView( {
          model: flight
        } );

        flightListView.render();
        $( "#origin" ).val( "" ).focus();
        $( "#destination" ).val( "" );
      } );
    } else {
      $( "#searchresult" ).html( "<div>No flight found based on the search of origin or/and destination</div>" );
    }
  },

  render: function () {
    var searchFormTemplate = $( "#SearchFormTemplate" ).html();
    this.$el.append( searchFormTemplate );
  }

} );
