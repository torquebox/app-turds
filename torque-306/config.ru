require 'rack_app.rb'
use Rack::Reloader
VAR = "config.ru"
run RackApp.new 