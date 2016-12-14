var app = app || {};


app.Flight = Backbone.Model.extend({

  urlRoot: "/flights",

  defaults: {
    flight_num: '',
    origin: '',
    destination: '',
    flight_datetime: ''
  },

  initialize: function () {
    console.log( "New flight model created" );
  }

});
