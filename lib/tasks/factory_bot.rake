# frozen_string_literal: true

require "English"

namespace :factory_bot do
  desc "Verify that all FactoryBot factories are valid"
  task lint: :environment do
    if Rails.env.test?
      DatabaseCleaner.allow_production = true
      DatabaseCleaner.allow_remote_database_url = true
      DatabaseCleaner.url_allowlist = [%r{^postgres://postgres:postgres}]
      DatabaseCleaner.cleaning do
        FactoryBot.lint
      end
    else
      system("bundle exec rake factory_bot:lint RAILS_ENV='test'")
      raise if $CHILD_STATUS.exitstatus.nonzero?
    end
  end
end
