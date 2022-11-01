require "rails_helper"

RSpec.describe "pages/summary.html.erb" do
  it "displays the page title" do
    render

    expect(rendered).to match(/Summary/)
  end
end
