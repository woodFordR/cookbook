# frozen_string_literal: true

source "https://rubygems.org"

gem "dry-types", "~> 1.0", ">= 1.6.1"
gem "hanami", "~> 2.1"
gem "hanami-assets", "~> 2.1"
gem "hanami-controller", "~> 2.1"
gem "hanami-router", "~> 2.1"
gem "hanami-validations", "~> 2.1"
gem "hanami-view", "~> 2.1"
gem "pg"
gem "puma"
gem "rake"
gem "rom", "~> 5.3"
gem "rom-sql", "~> 3.6"


group :development do
  gem "hanami-webconsole", "~> 2.1"
  gem "guard-puma"
end

group :development, :test do
  gem "dotenv"
end

group :cli, :development do
  gem "hanami-reloader", "~> 2.1"
end

group :cli, :development, :test do
  gem "hanami-rspec", "~> 2.1"
end

group :test do
  gem "capybara"
  gem "database_cleaner-sequel"
  gem "rack-test"
end
