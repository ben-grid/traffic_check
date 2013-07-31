require 'traffic_check/version'

Rails.application.routes.draw do
  match "traffic_check" => "traffic_check#index", :via => :get, defaults: {format: 'json'}
end