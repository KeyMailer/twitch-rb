$:.push File.expand_path("../lib", __FILE__)

require "twitch/version"

Gem::Specification.new do |s|
  s.name        = 'twitch'
  s.version     = Twitch::VERSION::STRING
  s.date        = "2016-09-16"
  s.summary     = "Twitch API"
  s.description = "Simplify Twitch's API for Ruby"
  s.authors     = ["Dustin Lakin"]
  s.email       = 'dustin.lakin@gmail.com'
  s.homepage    = "https://github.com/dustinlakin/twitch-rb"

  s.files       = Dir["lib/**/*"]
  s.require_paths = ["lib"]
  
  s.add_dependency('httparty')
  s.add_dependency('json')
  s.add_development_dependency('rspec')
end
