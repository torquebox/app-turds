require 'torquebox-naming'

class RackApp
  def call(env)
    global = TorqueBox::Naming["jmx/invoker/RMIAdaptor"].to_a.sort.join("\n")
    [200, {'Content-Type' => 'text/plain'}, global ]
  end
end

