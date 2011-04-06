require "torquebox-messaging"

foo = Class::That:Dont::Exist

class MyHandler < TorqueBox::Messaging::MessageProcessor
  def on_message(body) 
    puts "#{body}"
  end 
end
