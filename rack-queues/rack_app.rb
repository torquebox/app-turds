require 'org.torquebox.torquebox-messaging-client'
include TorqueBox

class RackApp
  def call(env)
    test
    [200, {'Content-Type' => 'text/plain'}, "the response" ]
  end
  
  def test
    req = Messaging::Queue.new '/queues/questions'
    res = Messaging::Queue.new '/queues/answers'

    t = Thread.new do
      req.publish "What time is it?"
      puts res.receive( :timeout => 1000 )
    end
    
    puts req.receive
    res.publish Time.now
  end
end

