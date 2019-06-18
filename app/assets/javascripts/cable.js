// Action Cable provides the framework to deal with WebSockets in Rails.
// You can generate new channels where WebSocket features live using the `rails generate channel` command.
//
//= require action_cable
//= require_self
//= require_tree ./channels

import * as ActionCable
    from "../../../../../../../../RailsInstaller/Ruby2.3.3/lib/ruby/gems/2.3.0/gems/actioncable-5.1.7/lib/assets/compiled/action_cable";

(function() {
  this.App || (this.App = {});

  App.cable = ActionCable.createConsumer("ws://cable.example.com");

}).call(this);
