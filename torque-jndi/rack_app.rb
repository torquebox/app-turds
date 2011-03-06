require 'org.torquebox.torquebox-naming-client'

class RackApp
  def call(env)
    global = TorqueBox::Naming[""].to_a.sort.join("\n")
    local = TorqueBox::Naming["java:"].to_a.sort.join("\n")
    [200, {'Content-Type' => 'text/plain'}, global+"\n\n"+local ]
  end
end

