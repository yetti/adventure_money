# frozen_string_literal: true

class ActiveSupport::TestCase
  def load_routes
    # TODO: follow up when the fix for the hack below is released https://github.com/heartcombo/devise/pull/5728
    Rails.application.reload_routes_unless_loaded
  end
end
