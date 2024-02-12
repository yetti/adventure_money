source "https://rubygems.org"

ruby "3.2.2"

# Use dotenv to load environment variables for development and testing
gem "dotenv-rails", groups: [:development, :test]

# Analyse code for security vulnerabilities
gem "brakeman", "~> 6.1"

# Analyse dependencies for security vulnerabilities
gem "bundler-audit", "~> 0.9.1"

# Format logs into a single line per event format
gem "lograge", "~> 0.14.0"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.1.3"

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
# gem "redis", ">= 4.0.1"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[windows jruby]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

# Reusable view components
gem "view_component", "~> 3.10"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[mri windows]

  gem "standard"
  gem "rubocop-rails"
  gem "rubocop-performance"
  gem "rubocop-minitest"
  gem "rubocop-capybara"
  gem "rubocop-factory_bot"

  gem "faker"
  gem "factory_bot_rails"

  gem "erb_lint", require: false

  # Needed to run Procfile.dev
  gem "foreman"
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  gem "rack-mini-profiler", require: false
  gem "memory_profiler"
  gem "stackprof"

  # Annotate models and routes
  gem "annotaterb", "~> 4.5"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
  gem "webmock"

  # Test code coverage reports
  gem "simplecov"
  gem "simplecov-cobertura"

  # restore "assigns" and "assert_template" to controller tests [https://github.com/rails/rails-controller-testing]
  gem "rails-controller-testing"
end
