require 'traffic_check/version'
require 'traffic_check/config/routes'

module TrafficCheck
  class TrafficCheck  
    def self.check
      status = {:traffic => true, :mode => "up", :code => 200}
      app_name = "app"
    
      if File.exists?("/tmp/#{app_name}.maint")
        status = {:traffic => false, :mode => "maintenance", :code => 404}
      end
      if File.exists?("/tmp/#{app_name}.down")
        status = {:traffic => false, :mode => "down", :code => 500}
      end
      status
    end  
  end
end
