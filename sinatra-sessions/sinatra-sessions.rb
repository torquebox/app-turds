require 'sinatra'

class SinatraSessions < Sinatra::Base

  use TorqueBox::Session::ServletStore

  get '/foo' do
    session[:message] = 'Hello World!'
    redirect '/bar'
  end

  get '/bar' do
    session[:message]   # => 'Hello World!'
  end

end
