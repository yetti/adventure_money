# frozen_string_literal: true

if Rails.env.development?
  require "rack-mini-profiler"

  # The initializer was required late, so initialize it manually.
  Rack::MiniProfilerRails.initialize!(Rails.application)

  # Move the profiler to the bottom right of the screen
  Rack::MiniProfiler.config.position = "bottom-right"
end
