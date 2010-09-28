# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_jbh_02_session',
  :secret      => 'fba5a5558223243ce963c07f80cfe7ab400f7d9a89bd539d24d0f532203c49e2b1e144f1b68f97d3fe7364f84167bd9e036b5001245b3abe0dc4649939da197b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
