source "https://rubygems.org"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.2.1"
# The modern asset pipeline for Rails [https://github.com/rails/propshaft]
gem "propshaft"
# Use postgresql as the database for Active Record
gem "pg", "~> 1.1"
# Use the Puma web server [https://github.com/puma/puma]
gem "puma", ">= 5.0"
# Bundle and transpile JavaScript [https://github.com/rails/jsbundling-rails]
gem "jsbundling-rails"
# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails"
# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"
# Bundle and process CSS [https://github.com/rails/cssbundling-rails]
gem "cssbundling-rails"
# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"
# Use Redis adapter to run Action Cable in production
gem "redis", ">= 4.0.1"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ windows jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

# change Rails' logging to traditional one-line-per-event format
gem "lograge", "~> 0.14.0"

# More performant HTTP client
gem "httpx", "~> 1.3"
# Use a common HTTP client interface
gem "faraday", "~> 2.12"

# More performant XML parser
gem "ox", "~> 2.14"
# Swappable backend for XML parsing
gem "multi_xml", "~> 0.7.1"

# User authentication
gem "devise", "~> 4.9"

# No longer a default gem in Ruby 3.5.0
gem "ostruct", "~> 0.6.0"

# Sentry dependencies
gem "stackprof"
gem "sentry-ruby"
gem "sentry-rails"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"

  # Static analysis for security vulnerabilities [https://brakemanscanner.org/]
  gem "brakeman", require: false
  # Check dependencies for vulnerabilities
  gem "bundler-audit", require: false

  # load runtime configuration from environment variables
  gem "dotenv-rails"

  # Omakase Ruby styling [https://github.com/rails/rubocop-rails-omakase/]
  gem "rubocop-rails-omakase", require: false
  gem "rubocop-factory_bot", require: false
  gem "rubocop-capybara", require: false

  # Lint ERB templates
  gem "erb_lint", require: false

  # Test factories
  gem "factory_bot_rails"
  # Fake data generator
  gem "faker"
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"

  # Annotate models with schema information
  gem "annotaterb"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem "selenium-webdriver"
  # Better javaScript testing for Capybara
  gem "cuprite"

  # Code coverage reporting
  gem "simplecov"
  # Generate coverage reports in Cobertura format
  gem "simplecov-cobertura"

  # Mock HTTP requests
  gem "webmock"
  # Record HTTP requests for playback in test
  gem "vcr"
end
