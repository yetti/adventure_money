# frozen_string_literal: true

require "capybara"

# Make server accessible from the outside world
Capybara.singleton_class.prepend(Module.new do
  attr_accessor :last_used_session

  def using_session(name, &block)
    self.last_used_session = name
    super
  ensure
    self.last_used_session = nil
  end
end)

Capybara.server_host = "0.0.0.0"

# Use a hostname that could be resolved in the internal Docker network
Capybara.app_host = app_host

# Usually, especially when using Selenium, developers tend to increase the max wait time.
# With Cuprite, there is no need for that.
# We use a Capybara default value here explicitly.
Capybara.default_max_wait_time = 2

# Normalize whitespaces when using `has_text?` and similar matchers,
Capybara.default_normalize_ws = true

# Where to store system tests artifacts (e.g. screenshots, downloaded files, etc.).
Capybara.save_path = ENV.fetch("CAPYBARA_ARTIFACTS", "./tmp/capybara")

# Disable animations in Capybara by default
Capybara.disable_animation = ENV.fetch("DISABLE_ANIMATION", "true") == "true"
