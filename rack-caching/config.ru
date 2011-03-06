require 'active_support/cache/torque_box_store'
require 'logger'

CACHE = ActiveSupport::Cache::TorqueBoxStore.new(:mode => :invalidate)
CACHE.logger = Logger.new(STDOUT)

class RackApp
  def call(env)
    request = Rack::Request.new(env)
    params = request.params.dup
    key = params.delete('key') || 'key'
    value = CACHE.fetch(key) { params }
    if params.any? && value != params
      value = params
      CACHE.write(key, value)
    end
    [200, {'Content-Type' => 'text/plain'}, "#{key} => #{value.inspect}\n" ]
  end
end

run RackApp.new 
