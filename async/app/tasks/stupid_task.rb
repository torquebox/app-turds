
class StupidTask < TorqueBox::Messaging::Task
  def do_something(payload)
    sleep 2
    p = Person.create(:name => payload[:time])
    puts "task: #{p.inspect}"
    p.do_something
    puts "Person saved foo"
  end
end



