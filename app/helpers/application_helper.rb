module ApplicationHelper
  include BetterHtml::Helpers

  def current_link_to(link_text, link_path)
    aria = {}
    if current_page?(link_path)
      aria[:current] = "page"
    end
    tag.a class: class_names("nav-link", {active: current_page?(link_path)}), aria: aria, href: link_path do
      link_text
    end
  end
end
