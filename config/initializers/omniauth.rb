OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '1089007687151-jh5ubbn9e8j2cfhtogbbror5d58hr53a.apps.googleusercontent.com', 'nfRY-g9B3-4Q7sJo7pzgeu8m', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end