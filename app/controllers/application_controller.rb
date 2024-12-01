# frozen_string_literal: true

class ApplicationController < ActionController::Base
  add_flash_types :info, :warning, :error, :success

  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
end
