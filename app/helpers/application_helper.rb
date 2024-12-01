# frozen_string_literal: true

module ApplicationHelper
  def flash_class(key)
    case key
    when "notice" then "alert-success"
    when "alert" then "alert-danger"
    when "info" then "alert-info"
    when "warning" then "alert-warning"
    when "error" then "alert-danger"
    when "success" then "alert-success"
    else "alert-info"
    end
  end
end
