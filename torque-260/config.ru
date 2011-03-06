require 'something'

use Rack::Reloader

class RackApp
  def call(env)
    Something.new.foo
    [200, {'Content-Type' => 'text/plain'}, "#{Time.now}\n" ]
  end
end

run RackApp.new 