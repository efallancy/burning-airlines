var app = app || {};

app.Flights = Backbone.Model.extend({
  
  url: "/flights",

  model: app.Flight,

});
