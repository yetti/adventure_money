# frozen_string_literal: true

require "test_helper"
require "support/with_clues"

Dir[File.join(__dir__, "system/support/**/*.rb")].sort.each { |file| require file }

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  include TestSupport::WithClues

  driven_by :rack_test
end

class BrowserSystemTestCase < ApplicationSystemTestCase
  if ENV["CAPYBARA_SERVER_PORT"]
    served_by host: "rails-app", port: ENV["CAPYBARA_SERVER_PORT"]

    driven_by :better_cuprite, using: :headless_chrome, screen_size: [ 1400, 1400 ], options: {
      browser: :remote,
      url: "http://#{ENV["SELENIUM_HOST"]}:4444"
    }
  else
    driven_by :better_cuprite
  end
end
