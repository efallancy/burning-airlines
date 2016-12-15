var app = app || {};

app.FlightListView = Backbone.View.extend( {
  tagName: "tr",

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

    console.log( this.$el );

    $( "tbody" ).append( this.$el ); // Append the search result

  }

} );
