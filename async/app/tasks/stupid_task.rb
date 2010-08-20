# require 'torquebox-messaging-client'
require 'torquebox/messaging/task'

class StupidTask < TorqueBox::Messaging::Task
  def do_something(payload)
    sleep 2
    puts Person.create(:name => payload[:time]).inspect
  end
end



