require 'org.torquebox.torquebox-messaging-client'

class Something

  include TorqueBox::Messaging::Backgroundable
  always_background :foo

  def foo
    puts "sleepy"
    sleep(9)
    puts "awake"
  end

end
