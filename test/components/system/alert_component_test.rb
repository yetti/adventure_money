# frozen_string_literal: true

require "test_helper"

class System::AlertComponentTest < ViewComponent::TestCase
  def test_component_renders_success_alert
    render_inline(System::AlertComponent.new(type: "success", message: "Success!"))

    assert_selector("div[class='alert alert-success']", text: "Success!")
  end

  def test_component_renders_danger_alert
    render_inline(System::AlertComponent.new(type: "danger", message: "Danger!"))

    assert_selector("div[class='alert alert-danger']", text: "Danger!")
  end
end
