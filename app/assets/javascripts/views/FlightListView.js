var app = app || {};

app.FlightListView = Backbone.View.extend( {
  tagName: "td",

  events: {
    "click": "viewFlightReservation"
  },

  viewFlightReservation: function () {
    console.log( this.model.get( "id" ) );
    app.router.navigate( "flight/" + this.model.get( "id" ), { trigger: true, replace: true } );
  },

  render: function () {
    if ( $( "table" ).length === 0 ) {
      $( "#searchresult" ).append( $( "#SearchResultHeaderTemplate" ).html() );
    }

    var resultTemplate = _.template( $( "#SearchResultTemplate" ).html() );
    var flightDetail = resultTemplate( this.model.toJSON() );
    var flight = this.$el.html( flightDetail );


    $( ".white_board" ).append( $( "tbody" ).append( this.$el.html() ) ); // Append the search result

     // Append the search result

  }

} );
