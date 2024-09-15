# frozen_string_literal: true

class AlertComponent < ViewComponent::Base
  include ApplicationHelper

  def initialize(type, message)
    @type = type
    @message = message
  end

  def flash_color
    case @type
    when "success" then "orange"
    when "alert" then "yellow"
    when "error" then "purple"
    when "info" then "blue"
    else "blue"
    end
  end

  def flash_icon
    case @type
    when "success" then "success"
    when "alert" then "alert"
    when "error" then "error"
    when "info" then "info"
    else "info"
    end
  end
end
