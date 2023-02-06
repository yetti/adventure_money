# frozen_string_literal: true

module ApplicationHelper
  include BetterHtml::Helpers

  def page_title(title)
    content_for(:page_title, title)
  end
end
