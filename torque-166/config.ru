class App1
  def call(env)
    [200, {}, ['App 1']]
  end
end

class App2
  def call(env)
    [200, {}, ['App 2']]
  end
end

use Rack::ContentType, 'text/plain'
use Rack::ContentLength

map '/mapping' do
  run App1.new
end

map '/mapping/admin' do
  run App2.new
end 
