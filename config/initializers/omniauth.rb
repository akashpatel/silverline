Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '490964707588512', '9ae1edbed26d357c3c01c44bf3727181'
end