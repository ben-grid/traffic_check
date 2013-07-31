require 'traffic_check/version'

WebRails::Application.routes.draw do
  match "traffic_check" => "traffic_check#index", :via => :get, defaults: {format: 'json'}
end
ActiveSupport.on_load(:action_controller) { WebRails::Application.routes.finalize! }