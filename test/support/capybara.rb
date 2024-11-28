# frozen_string_literal: true

require "capybara"

Capybara.configure do |config|
  # This allows helpers like click_on to locate any object by data-testid in addition to built-in selector-like values
  config.test_id = "data-testid"
end
