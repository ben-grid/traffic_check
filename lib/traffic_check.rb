require 'traffic_check/version'
require 'traffic_check/engine'
require 'rails/routes'

module TrafficCheck
  class TrafficCheck  
    def self.check
      status = {:traffic => true, :mode => "up", :code => 200}
    
      if File.exists?("/tmp/app.maint")
        status = {:traffic => false, :mode => "maintenance", :code => 404}
      end
      if File.exists?("/tmp/app.down")
        status = {:traffic => false, :mode => "down", :code => 500}
      end
      status
    end  
  end
end
