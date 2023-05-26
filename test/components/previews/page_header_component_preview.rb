# frozen_string_literal: true

class PageHeaderComponentPreview < ViewComponent::Preview
  layout "components/layout"

  def default
    render(PageHeaderComponent.new)
  end
end
