
class MyConsumer
  def process!(msg)
    puts "processor received #{msg.text}"
    sleep 10
    puts "processor done with #{msg.text}"
  end
  # def process!(msg)
  #   puts "processing"
  #   # p = Post.create :title => msg.text, :body => msg.inspect
  #   # Post.something
  #   puts "My consumer received #{msg.text}"
  # end
end
