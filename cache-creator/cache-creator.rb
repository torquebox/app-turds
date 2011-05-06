require 'sinatra/base'
require 'active_support/cache/torque_box_store'
include ActiveSupport::Cache

class CacheCreator < Sinatra::Base

  set :caches, {}

  get '/create/:name' do
    name = params[:name]
    cache = (settings.caches[name] = TorqueBoxStore.new(:name => name, :mode => :dist))
    "create #{cache}\n"
  end

  get '/read/:name/:key' do
    value = settings.caches[params[:name]].read(params[:key])
    "read #{params[:name]}[#{params[:key]}]==#{value}\n"
  end

  get '/write/:name/:key/:value' do
    settings.caches[params[:name]].write(params[:key], params[:value])
    "write #{params[:name]}[#{params[:key]}]=>#{params[:value]}\n"
  end
end
