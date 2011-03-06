class MessageController < ApplicationController
  def post
    msg = params[:msg] || "nothing"
    TorqueBox::Messaging::Queue.new('/queues/foo').publish msg
    puts "controller sent: #{msg}"
  end

  def task
    StupidTask.async(:do_something)
    puts "controller triggered task"
  end
end
