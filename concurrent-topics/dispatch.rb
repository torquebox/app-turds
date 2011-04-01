require 'rubygems'
require 'torquebox-messaging'

class Dispatch < TorqueBox::Messaging::MessageProcessor
  include TorqueBox::Injectors

  def initialize
    puts "Dispatch constructor"
    @queue = inject("/queues/rackapp1/local")
  end

  def on_message(msg)
    puts "dispatch received msg: #{msg.inspect}"
    @queue.publish(msg)
  end
end
