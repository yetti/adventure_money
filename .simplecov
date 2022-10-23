require "simplecov-html"
require "simplecov_json_formatter"

SimpleCov.minimum_coverage 80
SimpleCov.maximum_coverage_drop 5

SimpleCov.start "rails" do
  enable_coverage :branch

  minimum_coverage 0

  command_name "Job #{ENV["CIRCLE_NODE_INDEX"]}" if ENV["CIRCLE_NODE_INDEX"]

  # If running test in CI, generate just .json result, then we can join them later
  # else, generate the full HTML report
  if ENV["CI"]
    formatter SimpleCov::Formatter::SimpleFormatter
  else
    formatter SimpleCov::Formatter::MultiFormatter.new(
      [
        SimpleCov::Formatter::SimpleFormatter,
        SimpleCov::Formatter::HTMLFormatter
      ]
    )
  end

  add_filter do |source_file|
    source_file.lines.count < 10
  end

  add_group "Components", "app/components"
  add_group "Presenters", "app/requests"
  add_group "Presenters", "app/routing"
  add_group "Presenters", "app/system"
  add_group "Presenters", "app/views"
end
