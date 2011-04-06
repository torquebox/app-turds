
class RackApp
  include TorqueBox::Injectors

  def initialize
    @queue = inject('/queues/testing')
  end

  def call(env)
    @queue.publish(Time.now)
    [200, {'Content-Type' => 'text/plain'}, "the response" ]
  end
end

