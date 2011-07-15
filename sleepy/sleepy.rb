require 'sinatra'
require 'sleeper'

class Sleepy < Sinatra::Base

  get '/snooze/:duration' do
    duration = (params[:duration] || 1).to_i
    puts "request #{duration}"
    Sleeper.new.doze(duration)
  end

end
