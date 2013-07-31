require 'rails'
module TrafficCheck
  class Engine < Rails::Engine
    isolate_namespace TrafficCheck
  end
end