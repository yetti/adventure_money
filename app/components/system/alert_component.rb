# frozen_string_literal: true

class System::AlertComponent < ViewComponent::Base
  def initialize(type:, message:, dismissable: false)
    @type = type
    @message = message
    @dismissable = dismissable
  end

  def style
    style = "alert alert-#{@type}"
    if @dismissable
      style += " alert-dismissible fade show"
    end
    style
  end
end
