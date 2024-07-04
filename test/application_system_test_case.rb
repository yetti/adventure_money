require "system_helper"

Dir[File.join(__dir__, "system/support/**/*.rb")].sort.each { |file| require file }

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :better_cuprite
end
