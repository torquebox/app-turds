
class ScratchController < ApplicationController
  def async
    StupidTask.async(:do_something, :time => Time.now, :user => 42)
    puts "Sent message..."
  end
end
