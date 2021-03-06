require "simplecov-cobertura"
require "simplecov_json_formatter"

SimpleCov.start("rails") do
  # enable_coverage :branch

  # minimum_coverage 80

  command_name "Job #{ENV["CIRCLE_NODE_INDEX"]}" if ENV["CIRCLE_NODE_INDEX"]

  formatter SimpleCov::Formatter::MultiFormatter.new(
    [
      SimpleCov::Formatter::JSONFormatter,
      SimpleCov::Formatter::HTMLFormatter,
      SimpleCov::Formatter::CoberturaFormatter
    ]
  )

  track_files "**/*.rb"

  add_group "View Components", "app/components"

  add_filter do |source_file|
    source_file.lines.count < 10
  end

  add_filter(/.circleci/)
  add_filter(/.github/)
  add_filter(/.dockerdev/)
  add_filter(/bin/)
  add_filter(/db/)
  add_filter(/vendor/)
  add_filter(/node_modules/)
  add_filter(/config/)

  # Generated by `rails generate rodauth:install`
  add_filter "app/models/account.rb"
  add_filter "app/misc/rodauth_app.rb"
  add_filter "app/misc/rodauth_main.rb"
  add_filter "app/mailers/rodauth_mailer.rb"

  # Merges coverage data generated by parallel test runners
  add_filter "lib/tasks/coverage_report.rake"
end
