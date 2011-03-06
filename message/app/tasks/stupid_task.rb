
class StupidTask < TorqueBox::Messaging::Task
  def do_something(payload)
    Post.something
    puts "task did something"
  end
end



