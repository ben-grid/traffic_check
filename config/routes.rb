require 'traffic_check/version'

WebRails::Application.routes.draw do
  match "traffic_check" => "traffic_check#index", :via => :get, defaults: {format: 'json'}
end
