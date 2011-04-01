require 'rubygems'
require 'torquebox-messaging'

class ListFiles
  include TorqueBox::Injectors

  def initialize
    @path = File.dirname(__FILE__)
    @topic = inject('/topics/rackapp1/local')
  end

  def run
    dir = Dir.new(@path)
    @topic.publish dir.entries
  end
end
