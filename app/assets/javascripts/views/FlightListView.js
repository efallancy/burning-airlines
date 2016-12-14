var app = app || {};

app.FlightListView = Backbone.View.extend( {
  tagName: "div",

  events: {
    "click": "viewFlightReservation"
  },

  viewFlightReservation: function () {
    console.log( this.model.get( "id" ) );
    app.router.navigate( "flight/" + this.model.get( "id" ), { trigger: true, replace: true } );
  },

  render: function () {
    var resultTemplate = _.template( $( "#SearchResultTemplate" ).html() );
    var flightDetail = resultTemplate( this.model.toJSON() );
    var flight = this.$el.html( flightDetail );

    $( "#searchresult" ).append( flight ); // Append the search result
  }

} );
