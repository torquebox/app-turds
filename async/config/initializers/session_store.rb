# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_weezy21_session',
  :secret      => 'b6a32558b984ecbed68c1c45503abbbbbe7da0c3f957ff4a2c9f66355c119c3109a8fcc1e8d19b68f78872fb75a8ff46699645940fc5602c711d0322a7819c43'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
