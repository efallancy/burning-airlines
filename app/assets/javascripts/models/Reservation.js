var app = app || {};


app.Reservation = Backbone.Model.extend({

  urlRoot: "/flights/:id/reservations",

  initialize: function () {
    console.log( "New reservation model created" );
  }

});
