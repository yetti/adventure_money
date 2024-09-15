module ApplicationHelper
  def render_icon(icon, classes: nil)
    classes ||= "h-5 w-5"
    render "icons/#{icon}", classes:
  end
end
