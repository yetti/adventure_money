# frozen_string_literal: true

class SiteNavigationComponentPreview < ViewComponent::Preview
  layout "components/layout"

  def default
    render(SiteNavigationComponent.new)
  end
end
