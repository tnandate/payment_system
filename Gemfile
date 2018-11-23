source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'rails', '~> 5.2.1'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'

gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

gem 'bootsnap', '>= 1.1.0', require: false

gem 'devise'
gem 'slim-rails'
gem 'simple_form'
# undefined method normalize_formatting_rules' for #`
# check https://github.com/RubyMoney/money-rails/issues/524
gem 'money-rails', '~>1.12'
gem 'awesome_print'
gem 'bootstrap-sass'
gem 'jquery-rails'

gem 'dotenv-rails'
gem 'stripe'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]

  gem 'pry-byebug', require: false
  gem 'pry-doc', require: false
  gem 'pry-rails'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'spring-commands-rspec'

  gem 'pre-commit', require: false
  gem 'rubocop', require: false
end

group :test do
  gem 'rspec-rails'
  gem 'factory_bot', require: false
  gem 'capybara'
  gem 'capybara-screenshot'
  gem 'vcr'
  gem 'webmock'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
