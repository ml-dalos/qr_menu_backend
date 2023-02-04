source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.0"
gem "rails", "~> 7.0.4"

gem "alba", "~> 2.1"
gem "bootsnap", require: false
gem "dry-validation", "~> 1.10"
gem "oj", "~> 3.14"
gem "pg", "~> 1.4"
gem "puma", "~> 6.0"
gem "redis", "~> 5.0"
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]

group :development, :test do
  gem "bullet", "~> 7.0"
  gem "factory_bot_rails", "~> 6.2"
  gem "faker", "~> 3.1"
  gem "pry", "~> 0.14"
  gem "pry-byebug", "~> 3.10"
  gem "rspec-rails", "~> 6.0"
  gem "rubocop-rails", "~> 2.17"
  gem "rubocop-rspec", "~> 2.18"
  gem "standard", "~> 1.21"
end

group(:development) {}

group :test do
  gem "simplecov", "~> 0.22"
end
