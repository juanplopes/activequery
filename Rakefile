# Rakefile
require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('activequery', '0.1.0') do |p|
  p.description    = "Criteria Query API for Ruby ActiveRecord."
  p.url            = "http://github.com/juanplopes/activequery"
  p.author         = "Juan Lopes"
  p.email          = "juanplopes@gmail.com"
  p.ignore_pattern = ["tmp/*", "script/*"]
  p.development_dependencies = []
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake.rb"].sort.each do |x|
  require x
end
