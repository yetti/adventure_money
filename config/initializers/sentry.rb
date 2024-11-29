# frozen_string_literal: true

Sentry.init do |config|
  config.breadcrumbs_logger = [ :active_support_logger, :http_logger ]
  config.dsn = ENV["SENTRY_DSN"]
  config.enable_tracing = true

  # Set traces_sample_rate to 1.0 to capture 100%
  # of transactions for tracing.
  # We recommend adjusting this value in production.
  if Rails.env.production?
    config.traces_sample_rate = 0.5
  else
    config.traces_sample_rate = 1.0
  end

  # Set profiles_sample_rate to profile 100%
  # of sampled transactions.
  # We recommend adjusting this value in production.
  if Rails.env.production?
    config.profiles_sample_rate = 0.5
  else
    config.profiles_sample_rate = 1.0
  end
end
