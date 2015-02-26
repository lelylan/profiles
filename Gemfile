source 'http://rubygems.org'

ruby '1.9.3'

gem 'rails', '~> 3.2.13'
gem 'rails-api'
gem 'mongoid', '~> 3.1.4'
gem 'doorkeeper'
gem 'unicorn'
gem 'yajl-ruby'
gem 'rails_config'
gem 'addressable'
gem 'bcrypt-ruby', require: 'bcrypt'
gem 'bundler'
gem 'dalli'
gem 'active_model_serializers'
gem 'redis-throttle', git: 'git://github.com/andreareginato/redis-throttle.git'
gem 'rack-cors', require: 'rack/cors'
gem 'sidekiq', '2.6.0'
gem 'sinatra', :require => nil
gem 'slim'
gem 'newrelic_rpm'

group :development, :test do
  gem 'foreman'
  gem 'rspec-rails', '~> 2.6'
  gem 'shoulda'
  gem 'capybara', '~> 1.1.4'
  gem 'capybara-json'
  gem 'mock_redis'
  gem 'factory_girl_rails', require: false
  gem 'hashie'
  gem 'database_cleaner'
  gem 'fuubar'
  gem 'delorean'
  gem 'spork', '~> 1.0rc'
  gem 'guard-spork'
  gem 'guard-rspec'
  gem 'rails_best_practices'
  gem 'test-unit'
  gem 'debugger'
end

group :test do
  gem 'webmock'
  gem 'growl'
  gem 'rb-fsevent'
  gem 'launchy'
end

group :production do
  gem 'rails_12factor'
end

group :assets do
  gem 'jquery-rails'
  gem 'sass-rails', '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '~> 1.0.3'
end
