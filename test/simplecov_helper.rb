require "simplecov"
require "simplecov-cobertura"

SimpleCov.formatters = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::HTMLFormatter,
  SimpleCov::Formatter::CoberturaFormatter
])

SimpleCov.start "rails" do
  add_filter do |source_file|
    source_file.lines.count < 10
  end
  add_filter "test"
  add_filter "config"
  add_filter "tmp"
  add_filter "lib"

  add_group "Services", "app/services"
end

SimpleCov.enable_coverage :branch
SimpleCov.minimum_coverage line: 90, branch: 80
SimpleCov.maximum_coverage_drop 5
