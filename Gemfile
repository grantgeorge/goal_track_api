source 'https://rubygems.org'

gem 'rails', '4.2.0'
gem 'rails-api', '0.4.0'
gem 'pg', '0.18.2'
gem 'foreman', '0.78.0'
gem 'colorize', '0.7.7'
gem 'active_model_serializers', '0.8.3'
gem 'rack-cors', :require => 'rack/cors'
gem 'puma', '2.11.3'
gem 'devise', '3.5.1'
gem 'sdoc', '~> 0.4.0', group: :doc

group :test, :development do
  gem 'faker', '1.4.2'
  gem 'rspec-rails', '~> 2.0'
  gem 'factory_girl_rails', '~> 4.0'
  gem 'database_cleaner'
  gem 'byebug'
  gem 'web-console'
  gem 'spring'
end

group :production, :staging do
  gem 'rails_12factor', '0.0.3'
  gem 'rails_stdout_logging', '0.0.3'
end

ruby '2.2.1'
