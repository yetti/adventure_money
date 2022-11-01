require "rails_helper"

RSpec.describe "pages/owed.html.erb" do
  it "displays the page title" do
    render

    expect(rendered).to match(/Money Owed/)
  end
end
