require 'org.torquebox.torquebox-messaging-client'

class RackApp
  def call(env)
    request = Rack::Request.new(env)
    TorqueBox::Messaging::Queue.new("/queues/#{request.params['name']}").start
    [200, {'Content-Type' => 'text/plain'}, "done" ]
  end
end

