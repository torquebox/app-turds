
class ScratchController < ApplicationController
  def async
    StupidJob
    puts "Sending message..."
    StupidTask.async(:do_something, :time => Time.now, :user => 42)
    puts "Sent message..."
  end
end
