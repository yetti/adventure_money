# frozen_string_literal: true

require "vcr"

VCR.configure do |config|
  config.allow_http_connections_when_no_cassette = true
  config.cassette_library_dir = "test/fixtures/files/cassettes"
  config.hook_into :webmock
  config.ignore_localhost = true
  config.ignore_hosts "selenium", "chromedriver.storage.googleapis.com"
  config.ignore_request do |request|
    uri = URI(request.uri)

    next if ENV["DISABLE_VCR"]
    next if uri.host == "selenium"
  end
end
