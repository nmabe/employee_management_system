source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.0'

gem 'rails', '~> 6.0.0.beta3'
gem 'bootstrap-sass', '~> 3.4', '>= 3.4.1'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'webpacker', '>= 4.0.0.rc.3'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'redis', '~> 4.0'
gem 'bcrypt', '~> 3.1.7'
gem 'image_processing', '~> 1.2'
gem 'uglifier', '~> 4.1', '>= 4.1.20'
gem 'jquery-rails', '~> 4.3', '>= 4.3.3'
gem 'faker', '~> 1.6', '>= 1.6.3'
gem 'bootstrap-will_paginate', '~> 0.0.10'
gem 'will_paginate', '~> 3.1'
gem 'bootsnap', '>= 1.4.1', require: false

group :development, :test do
  gem 'sqlite3', '~> 1.3', '>= 1.3.6'
  gem 'capybara', '>= 2.15'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'rails-controller-testing', '~> 1.0','>=1.0.4'
  gem 'minitest-reporters', '~> 1.3', '>= 1.3.6'
  gem 'guard', '~> 2.15'
  gem 'guard-minitest', '~> 2.4', '>= 2.4.6'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end

group :production do
  gem 'pg', '~> 1.1', '>= 1.1.4'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
