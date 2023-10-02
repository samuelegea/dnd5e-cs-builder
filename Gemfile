source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.2'

gem 'rails', '~> 7.0.8'
gem 'sprockets-rails'
gem 'puma', '~> 5.0'
gem 'importmap-rails'
gem 'turbo-rails'
gem 'stimulus-rails'
gem 'jbuilder'
gem 'redis', '~> 4.0'
gem 'redis-rails'
gem 'tzinfo-data', platforms: %i[ mingw mswin x64_mingw jruby ]
gem 'bootsnap', require: false
gem 'pg'
gem 'sidekiq'
gem 'pry-rails'
gem 'pry'
gem 'pry-byebug'
gem 'pry-doc'
gem 'pry-stack_explorer'
gem 'pry-nav'

group :development, :test do
  gem 'debug', platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem 'web-console'
  gem "hotwire-livereload"
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
end

gem "tailwindcss-rails", "~> 2.0"
