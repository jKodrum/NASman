OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  #provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET']
  provider :facebook, "255687754617437", "c3358e53cecc3da79e6d7a5e893bbf48", scope: "email, publish_stream"
  provider :dropbox, "62phc8igagpkgx9", "k6wbf4xe44k4jxn"
end
