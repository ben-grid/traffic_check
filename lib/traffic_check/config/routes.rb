require 'rails'
require 'traffic_check/version'
module TrafficCheck
  Rails.application.routes.draw do
    match "traffic_check" => "traffic_check#index", :via => :get, defaults: {format: 'json'}
  end
end