# Traffic Check

![Traffic icon](http://www.iconshock.com/img_jpg/BETA/general/jpg/128/traffic_lights_icon.jpg)

## Overview

This gem creates a traffic check endpoint in your rails app at GET /traffic_check via json. This endpoint will normally return a *200* status code, along with a json string with lite details. Similarly, it returns different statuses and json for different modes, the modes are:

### Traffic Modes

Mode         | Code          | Trigger File
------------ | :-----------: | ------------
Up           | 200           | None (Default mode)
Maintenance  | 404           | app.maintenance 
Down         | 500           | app.down

The traffic modes above are triggered by the presence of the trigger files listed in the table. 

### Installation

Add this line to your application's Gemfile:

    gem 'traffic_check', :git => "git@github.com:ben-grid/traffic_check.git"

And then execute:

    $ bundle install
    
### Contributing

1. Fork it
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create new Pull Request
