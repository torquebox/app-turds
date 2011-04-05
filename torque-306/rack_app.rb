
class RackApp
  def call(env)
    [200, {'Content-Type' => 'text/plain'}, "VAR=#{VAR}" ]
  end
end

