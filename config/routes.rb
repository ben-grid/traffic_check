require 'traffic_check/version'

WebRails::Application.routes.draw do
  namespace :kasi, :module => 'admin', :as => 'admin' do
    match "traffic_check" => "traffic_check#index", :via => :get, defaults: {format: 'json'}
  end
end
