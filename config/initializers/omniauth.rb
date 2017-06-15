# config/initializers/omniauth.rb
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['APP_ID'], ENV['APP_SECRET'], scope: 'email,user_birthday,user_friends', display: 'popup'
  provider :twitter,  ENV['APP_ID'], ENV['APP_SECRET']
  provider :linkedin, ENV['APP_ID'], ENV['APP_SECRET']
  provider :google_oauth2, ENV['APP_ID'], ENV['APP_SECRET']
end
