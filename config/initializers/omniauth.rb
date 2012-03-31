Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '353965787981060', 'aaa6f27ca82e6308bc7949fafcd33e8e'
end