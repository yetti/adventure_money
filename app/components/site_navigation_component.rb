# frozen_string_literal: true

class SiteNavigationComponent < ViewComponent::Base
  def navbar_link(label = "Dashboard", path = root_path, mobile = false, active = false)
    link_to label, path, class: navigation_style(active, mobile), aria: aria_attrs(path)
  end

  def navigation_style(active = false, mobile = false)
    style = if active
      "bg-gray-900 text-white"
    else
      "text-gray-300 hover:bg-gray-700 hover:text-white"
    end
    if mobile
      "#{style} block rounded-md px-3 py-2 text-base font-medium"
    else
      "#{style} rounded-md px-3 py-2 text-sm font-medium"
    end
  end

  def aria_attrs(path = root_path)
    aria = {}

    if helpers.current_page?(path)
      aria[:current] = "page"
    end

    aria
  end
end
