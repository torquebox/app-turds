require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'torquebox-messaging'

publisher = TorqueBox::Messaging::Queue.new '/queues/requests'
receiver = TorqueBox::Messaging::Queue.new '/queues/responses'

get '/:word' do
  publisher.publish params[:word]
  receiver.receive(:timeout => 25000)
end

run Sinatra::Application
