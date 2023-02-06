# frozen_string_literal: true

if Rails.env.development?
  if Annotate.version != "3.2.0"
    raise "annotate has been updated to version #{Annotate.version}! " \
      "Check if the 'rails routes' patch is still needed, or if this PR has been merged: " \
      "https://github.com/ctran/annotate_models/pull/843"
  end

  module AnnotateRoutes
    class HeaderGenerator
      class << self
        private

        # UPDATE: Changed `rake routes` to `rails routes`
        def routes_map(options)
          result = `rails routes`.chomp("\n").split(/\n/, -1)

          # In old versions of Rake, the first line of output was the cwd.  Not so
          # much in newer ones.  We ditch that line if it exists, and if not, we
          # keep the line around.
          result.shift if %r{^\(in /}.match?(result.first)

          ignore_routes = options[:ignore_routes]
          regexp_for_ignoring_routes = ignore_routes ? /#{ignore_routes}/ : nil

          # Skip routes which match given regex
          # Note: it matches the complete line (route_name, path, controller/action)
          if regexp_for_ignoring_routes
            result.reject { |line| line =~ regexp_for_ignoring_routes }
          else
            result
          end
        end
      end
    end
  end
end
