# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_msg_session',
  :secret      => 'd524691fae1cfc069fa13593792abaa41f26f72eb699cd2e6f38a95c055941660e6240acfc762f904b3581ff5f52ed90820385c89b6149565e501b7188964afa'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
