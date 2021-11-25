source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.7.4"

gem "bootsnap", ">= 1.4.4", require: false
gem "clearance", "~> 2.4.0"
gem "honeybadger", "~> 4.0"
gem "hotwire-rails", "~> 0.1.3"
gem "jbuilder", "~> 2.7"
gem "money-rails", "~> 1.14.0"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "rails", "~> 6.1.4"
gem "redis", "~> 4.2.5"
gem "sass-rails", ">= 6"
gem "webpacker", "~> 5.0"

group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "pry-rails"
  gem "rspec-rails", "~> 4.0.2"
  gem "rubocop", "~> 1.10", require: false
  gem "rubocop-performance", "~> 1.9.2", require: false
  gem "rubocop-rails", "~> 2.9.1", require: false
end

group :development do
  gem "faker", "~> 2.16.0"
  gem "listen", "~> 3.3"
  gem "rack-mini-profiler", "~> 2.0"
  gem "web-console", ">= 4.1.0"
end

group :test do
  gem "capybara", ">= 3.26"
  gem "selenium-webdriver"
  gem "webdrivers"
end
