class Person < ActiveRecord::Base

  def do_something
    puts "I'll be doing something else to #{name}"
  end

  def self.say_wtf
    puts "foo!!"
  end

end
