# frozen_string_literal: true

require "simplecov"
require "simplecov-cobertura"
require "simplecov-json"

SimpleCov.configure do
  formatter SimpleCov::Formatter::MultiFormatter.new(
    [
      SimpleCov::Formatter::HTMLFormatter,
      SimpleCov::Formatter::JSONFormatter,
      SimpleCov::Formatter::CoberturaFormatter
    ]
  )
  add_filter do |source_file|
    source_file.lines.count < 10
  end
  add_filter "config"
  add_filter "tmp"
  add_filter "lib"

  add_group "Services", "app/services"

  minimum_coverage line: 60
  refuse_coverage_drop
  maximum_coverage_drop 5
end

SimpleCov.start "rails" if ENV["CI"]
