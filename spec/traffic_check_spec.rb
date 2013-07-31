require "spec_helper"

describe TrafficCheck do
  describe "check" do
    it "should return traffic true and mode up" do
      @traffic = TrafficCheck::TrafficCheck.check
      @traffic.should be_kind_of(Hash)
      @traffic.should include(:traffic => true)
      @traffic.should include(:code => 200)
    end
    
    it "should return traffic false and mode maintenance" do
      maintenance_file = File.new("/tmp/app.maint", "w")
      @traffic = TrafficCheck::TrafficCheck.check
      @traffic.should be_kind_of(Hash)
      @traffic.should include(:traffic => false)
      @traffic.should include(:code => 404)
      File.delete(maintenance_file.to_path)
    end
    
    it "should return traffic false and mode down" do
      down_file = File.new("/tmp/app.down", "w")
      @traffic = TrafficCheck::TrafficCheck.check
      @traffic.should be_kind_of(Hash)
      @traffic.should include(:traffic => false)
      @traffic.should include(:code => 500)
      File.delete(down_file.to_path)
    end
    
    it "down mode should take precedence over maintenance" do
      down_file = File.new("/tmp/app.down", "w")
      maintenance_file = File.new("/tmp/boss.maint", "w")
      @traffic = TrafficCheck::TrafficCheck.check
      @traffic.should be_kind_of(Hash)
      @traffic.should include(:traffic => false)
      @traffic.should include(:code => 500)
      File.delete(down_file.to_path)
      File.delete(maintenance_file.to_path)
    end
  end
end