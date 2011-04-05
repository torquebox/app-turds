require 'rack_app.rb'
use Rack::Reloader
VAR = "foo.ru"
run RackApp.new 