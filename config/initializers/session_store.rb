# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_easwaran_website_session',
  :secret      => 'ce08080e0c1616675e53e7ce5bad22ec02a840a35362bcda96b3cfe46b675151acfd3403e26f1a141815bc987bc35551613d02427507dfa07bc1af4f3602b8ac'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
