require 'torquebox-messaging'

class Sleeper

  include TorqueBox::Messaging::Backgroundable
  always_background :doze

  def doze(duration)
    puts "sleep #{duration}"
    sleep( duration )
    puts "awake #{duration}"
  end

end
