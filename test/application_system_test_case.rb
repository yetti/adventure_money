require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  DRIVER = if ENV["DRIVER"].present?
    ENV["DRIVER"].to_sym
  else
    :headless_chrome
  end
  puts "#{DRIVER} selected"

  driven_by :selenium, using: :chrome, screen_size: [1400, 1400]
end
