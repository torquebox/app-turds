class Person < ActiveRecord::Base

  def do_something
    puts "Doing Something to #{name}"
  end
end
