# Configure the TorqueBox Servlet-based session store.
# Provides for server-based, in-memory, cluster-compatible sessions.
ActionController::Base.session_store = :torque_box_store
