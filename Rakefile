require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('rMeetup','1.0') do |p|
  p.description = "A simple Ruby gem, providing access to the Meetup API"
  p.url         = "https://github.com/Jberlinsky/rmeetup"
  p.author      = "Jason Berlinsky"
  p.email       = "jason@jasonberlinsky.com"
  p.ignore_pattern  = ["tmp/*", "script/*"]
  p.development_dependencies  = []
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }
