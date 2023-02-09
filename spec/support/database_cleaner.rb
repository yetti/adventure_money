# frozen_string_literal: true

require "database_cleaner/active_record"
require "database_cleaner/redis"

DatabaseCleaner.allow_remote_database_url = true
DatabaseCleaner.url_allowlist = [
  %r{^postgres://postgres:postgres@0.0.0.0:5432},
  %r{^postgres://postgres:@localhost:5432}
]

RSpec.configure do |config|
  config.before(:suite) do
    DatabaseCleaner[:active_record].strategy = :truncation
    DatabaseCleaner[:redis].strategy = :deletion
  end

  config.around do |example|
    DatabaseCleaner.cleaning do
      example.run
    end
  end
end
