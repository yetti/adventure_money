# frozen_string_literal: true

ENV["RAILS_ENV"] ||= "test"
require_relative "simplecov_helper"
require_relative "../config/environment"
require "rails/test_help"

Dir[File.join(__dir__, "support/**/*.rb")].sort.each { |file| require file }

module ActiveSupport
  class TestCase
    # Run tests in parallel with specified workers
    parallelize(workers: :number_of_processors)

    # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
    # fixtures :all

    # Add more helper methods to be used by all tests here...
    include Devise::Test::IntegrationHelpers

    setup do
      load_routes
      @user = create(:user)
      sign_in(@user)
    end
  end
end
