require_relative "boot"

require "rails/all"

require "json"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module AdventureMoney
  manifest_file = File.read(".release-please-manifest.json")
  manifest_data = JSON.parse(manifest_file)

  VERSION = manifest_data["."]

  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.1

    # Please, add to the `ignore` list any other `lib` subdirectories that do
    # not contain `.rb` files, or that should not be reloaded or eager loaded.
    # Common ones are `templates`, `generators`, or `middleware`, for example.
    config.autoload_lib(ignore: %w[assets tasks])

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    config.time_zone = "Canberra"
    # config.eager_load_paths << Rails.root.join("extras")

    # Add view components to autoload paths
    config.autoload_paths << Rails.root.join("app/components")
  end
end
