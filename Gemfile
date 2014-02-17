source 'https://rubygems.org'
ruby '1.9.3'
gem 'rails', '3.2.13'

gem 'paperclip'
gem 'aws-sdk'
gem 'jquery-ui-rails'
gem "therubyracer"
gem "less-rails" #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
gem "twitter-bootstrap-rails"
gem "auto_html"
gem "jquery-rails"
gem "devise"
gem "grackle"
gem 'newrelic_rpm'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

group :development, :test do
  gem 'sqlite3'
end

group :production do
  gem 'pg', '0.15.1'
  gem 'rails_12factor', '0.0.2'
end
