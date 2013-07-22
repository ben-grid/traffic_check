class TrafficCheck
    
  def self.check
    status = {:traffic => true, :mode => "up", :code => 200}
    
    if File.exists?("/tmp/#{Rails.application.class.to_s.split("::").first}.maint")
      status = {:traffic => false, :mode => "maintenance", :code => 404}
    end
    if File.exists?("/tmp/#{Rails.application.class.to_s.split('::').first}.down")
      status = {:traffic => false, :mode => "down", :code => 500}
    end
    status
  end  
  
end
