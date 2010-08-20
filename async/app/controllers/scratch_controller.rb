require 'tasks/stupid_task'

class ScratchController < ApplicationController
  def async
    puts "Sending message"
    StupidTask.async(:do_something, :time => Time.now, :user => 42)
  end
end
