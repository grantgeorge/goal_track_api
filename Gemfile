source 'https://rubygems.org'

gem 'rails', '4.2.0'
gem 'rails-api'
gem 'pg'
gem 'foreman'
gem 'colorize'
gem 'active_model_serializers'
gem 'rack-cors', :require => 'rack/cors'
gem 'puma'
gem 'devise', '3.5.1'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'thin'

group :test, :development do
  gem 'faker',                  '1.4.2'
  gem 'rspec-rails', '~> 2.0'
  gem 'factory_girl_rails', '~> 4.0'
  gem 'database_cleaner'
  gem 'byebug'
  gem 'web-console'
  gem 'spring'
end

group :production, :staging do
  gem 'rails_12factor'
  gem 'rails_stdout_logging'
  gem 'rails_serve_static_assets'
end

ruby '2.2.1'
