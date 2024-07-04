require "capybara"
require "capybara/cuprite"

# NOTE: The name :cuprite is already registered by Rails.
# See https://github.com/rubycdp/cuprite/issues/180
Capybara.register_driver(:better_cuprite) do |app|
  Capybara::Cuprite::Driver.new(
    app,
    window_size: [1200, 800],
    browser_options: RemoteChrome.connected? ? {"no-sandbox" => nil} : {},
    process_timeout: 10,
    inspector: true,
    headless: ENV.fetch("CI", "true") == "true",
    slowmo: ENV.fetch("SLOWMO", 0).to_f,
    **remote_options,
    **driver_options
  )
end

# Configure Capybara to use :better_cuprite driver by default
Capybara.default_driver = Capybara.javascript_driver = :better_cuprite
