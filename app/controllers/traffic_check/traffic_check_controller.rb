require 'traffic_check/version'

module TrafficCheck
  class TrafficCheckController < ApplicationController  
    respond_to :json
    skip_before_filter :force_ssl

    def index
      @traffic_check = TrafficCheck.check
      @status_code = @traffic_check[:code]
      respond_with(@traffic_check, :status => @status_code)
    end
  end
end
