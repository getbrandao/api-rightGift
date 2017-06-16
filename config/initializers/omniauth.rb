# config/initializers/omniauth.rb
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['APP_ID_FACEBOOK'], ENV['APP_SECRET_FACEBOOK'], scope: 'email,user_birthday,user_friends', display: 'popup'
  provider :twitter,  ENV['APP_ID_TWITTER'], ENV['APP_SECRET_TWITTER']
  provider :google_oauth2, ENV['APP_ID_GOOGLE'], ENV['APP_SECRET_GOOGLE']
end
