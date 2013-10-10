lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'traffic_check/version'

Gem::Specification.new do |s|
  s.name          = 'traffic_check'
  s.version       = TrafficCheck::VERSION
  s.date          = '2013-07-22'
  s.summary       = "This gem adds a traffic check utility used by SendGrid web repos"
  s.description   = "The traffic check utility allows for enabling and disabling traffic to the server running it. The library looks for files in /tmp/repo_name.<maint|down> The .maint file mode sets the server to maintenance mode, and .down to down mode accordingly. Operations nginx servers should respond to these modes accordingly."
  s.authors       = ["Ben Golden"]
  s.email         = 'team-meme@sendgrid.com'
  s.files         = `git ls-files`.split("\n")
  s.require_paths = ["lib"]
  s.homepage      = ''
  
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})

  s.add_dependency 'rails'
  s.add_development_dependency 'rspec'
end
