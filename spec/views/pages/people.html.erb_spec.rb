require "rails_helper"

RSpec.describe "pages/people.html.erb" do
  it "displays the page title" do
    render

    expect(rendered).to match(/People/)
  end
end
