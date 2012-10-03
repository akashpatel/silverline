source 'https://rubygems.org'

gem 'rails', '3.2.1'
gem 'devise'
gem 'koala' # 1.0
gem 'omniauth'
gem 'omniauth-facebook'
gem 'jquery-rails'
gem "paperclip", :git => "git://github.com/thoughtbot/paperclip.git"
gem 'newrelic_rpm'
gem 'acts-as-taggable-on', '~> 2.3.1'


group :development, :test do
	gem 'sqlite3'
	gem 'ruby-debug19', :require => 'ruby-debug'
	# gem 'capistrano'
end

group :production do
	  gem 'pg'
end


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer'

  gem 'uglifier', '>= 1.0.3'
end

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'
