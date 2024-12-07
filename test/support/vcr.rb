# frozen_string_literal: true

require "vcr"

VCR.configure do |config|
  config.allow_http_connections_when_no_cassette = true
  config.cassette_library_dir = "fixtures/cassettes"
  config.hook_into :webmock
  config.ignore_request { ENV["DISABLE_VCR"] }
  config.ignore_localhost = true
  config.default_cassette_options = {
    :record => :new_episodes
  }
end
