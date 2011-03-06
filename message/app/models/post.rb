class Post < ActiveRecord::Base
  def self.something
    puts "something else"
  end
end
