module ActionDispatch::Routing
  class Mapper
    # Includes mount_traffic_check method for routes
    def mount_traffic_check
      match "traffic_check" => "traffic_check/traffic_check#index", :via => :get, defaults: {format: 'json'}
      mount TrafficCheck::Engine => "/", :as => "traffic_check_engine"
    end
  end
end