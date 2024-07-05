source "https://rubygems.org"

ruby "3.3.2"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.1.3", ">= 7.1.3.4"

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
gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[windows jruby]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

# changes Rails' logging to traditional one-line-per-event format
gem "lograge", "~> 0.14.0"

# Use Faraday to perform HTTP requests
gem "faraday", "~> 2.9"

# More performant http client
gem "httpx", "~> 1.2"

# More performant JSON parser
gem "oj", "~> 3.16"

# User authentication
gem "devise", "~> 4.9"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[mri windows]

  # Extra functionality for Rails
  gem "ruby-lsp-rails"

  # load runtime configuration from environment
  gem "dotenv-rails"

  gem "solargraph", require: false

  # Analyze code for security vulnerabilities
  gem "brakeman"
  # Check dependencies for vulnerabilities
  gem "bundler-audit"

  # rubocop plugins
  gem "rubocop-capybara", require: false
  gem "rubocop-factory_bot", require: false
  gem "rubocop-performance", require: false
  gem "rubocop-rails", require: false
  gem "rubocop-minitest", require: false

  # Use Standard.rb rules with rubocop
  gem "standard", require: false

  # Lint ERB templates
  gem "erb_lint", require: false

  # Factories to generate mock data for testing
  gem "factory_bot_rails"

  # Generate fake data for testing
  gem "faker"
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  gem "spring"

  # Annotate models with schema information
  gem "annotaterb"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  # Run capybara tests with headless Chrome
  gem "selenium-webdriver"
  # Better JavaScript testing for Capybara
  gem "cuprite"

  # Code coverage report
  gem "simplecov"

  # Generate coverage reports in Cobertura format
  gem "simplecov-cobertura"

  # Mock HTTP requests
  gem "webmock"

  # Record HTTP requests for playback in test
  gem "vcr"
end
