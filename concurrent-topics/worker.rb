require 'rubygems'
require 'torquebox-messaging'

class Worker < TorqueBox::Messaging::MessageProcessor
  def initialize
    puts "Worker constructor"
  end

  def on_message(msg)
    puts "worker #{object_id} received message #{msg.inspect}"
    sleep(6)
    puts "worker #{object_id} finished"
  end
end
