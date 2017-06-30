// Action Cable provides the framework to deal with WebSockets in Rails.
<<<<<<< HEAD
// You can generate new channels where WebSocket features live using the `rails generate channel` command.
=======
// You can generate new channels where WebSocket features live using the rails generate channel command.
>>>>>>> d9ac59bad4e94b57160610617dfc83560657564d
//
//= require action_cable
//= require_self
//= require_tree ./channels

(function() {
  this.App || (this.App = {});

  App.cable = ActionCable.createConsumer();

}).call(this);
