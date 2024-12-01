# frozen_string_literal: true

require "minitest/reporters"

Minitest::Reporters.use!(
  [
    Minitest::Reporters::SpecReporter.new(color: true),
    Minitest::Reporters::MeanTimeReporter.new,
    Minitest::Reporters::HtmlReporter.new
  ],
  ENV,
  Minitest.backtrace_filter
) unless ENV["RM_INFO"]
