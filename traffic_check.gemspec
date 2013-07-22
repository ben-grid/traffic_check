Gem::Specification.new do |s|
  s.name        = 'traffic_check'
  s.version     = '0.0.0'
  s.date        = '2013-07-22'
  s.summary     = "This gem adds a traffic check utility used by SendGrid web repos"
  s.description = "The traffic check utility allows for enabling and disabling traffic to the server running it. The library looks for files in /tmp/repo_name.<maint|down> The .maint file mode sets the server to maintenance mode, and .down to down mode accordingly. Operations nginx servers should respond to these modes accordingly."
  s.authors     = ["Ben Golden"]
  s.email       = 'team-admin@sendgrid.com'
  s.files       = ["lib/traffic_check.rb"]
  s.homepage    = ''
end