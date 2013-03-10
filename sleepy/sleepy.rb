require 'sinatra'
require 'sleeper'

class Sleepy < Sinatra::Base

  get '/snooze/:duration' do
    duration = (params[:duration] || 1).to_i
    Sleeper.new.doze(duration)
    "received request to sleep for #{duration}s\n"
  end

end
