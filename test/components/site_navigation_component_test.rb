# frozen_string_literal: true

require "test_helper"

class SiteNavigationComponentTest < ViewComponent::TestCase
  def test_navigation_style
    with_request_url "/" do
      render_inline(SiteNavigationComponent.new)

      assert_equal(
        "bg-gray-900 text-white rounded-md px-3 py-2 text-sm font-medium",
        page.first(:link, text: "Dashboard")[:class]
      )
    end

    with_request_url "/about" do
      render_inline(SiteNavigationComponent.new)

      assert_equal(
        "text-gray-300 hover:bg-gray-700 hover:text-white rounded-md px-3 py-2 text-sm font-medium",
        page.first(:link, text: "Dashboard")[:class]
      )
    end
  end
end
