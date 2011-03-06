
class RackApp
  def call(env)
    [200, {'Content-Type' => 'text/plain'}, "the response" ]
  end
end

