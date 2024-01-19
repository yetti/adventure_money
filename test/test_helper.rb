ENV["RAILS_ENV"] ||= "test"

require_relative "simplecov_helper"
require_relative "../config/environment"

require "rails/test_help"
require "webmock/minitest"

module ActiveSupport
  class TestCase
    # Run tests in parallel with specified workers
    parallelize(workers: :number_of_processors)

    # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
    fixtures :all

    # Fix the merging of coverage reports from parallel processes when using parallelization
    # from https://github.com/simplecov-ruby/simplecov/issues/718#issuecomment-538201587
    if ENV["CI"].present? || ENV["COVERAGE"].present?
      parallelize_setup do |worker|
        SimpleCov.command_name "#{SimpleCov.command_name}-#{worker}"
      end

      parallelize_teardown do |_worker|
        SimpleCov.result
      end
    end

    # Add more helper methods to be used by all tests here...
    include FactoryBot::Syntax::Methods
  end
end
