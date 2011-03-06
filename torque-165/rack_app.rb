class RackApp
  def call(env)
    request = Rack::Request.new(env)
    [200, {'Content-Type' => 'text/plain'}, request.inspect]
  end
end
