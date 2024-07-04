# Load general Rails test configuration
require "test_helper"

# Load configuration files and helpers
Dir[File.join(__dir__, "system/support/**/*.rb")].sort.each { |file| require file }
