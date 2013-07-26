require 'traffic_check/version'

Rails.application.routes.draw do
  map.root :controller => "traffic_check", :action => "index"  
end
