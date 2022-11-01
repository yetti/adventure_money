require "rails_helper"

RSpec.describe "pages/categories.html.erb" do
  it "displays the page title" do
    render

    expect(rendered).to match(/Categories/)
  end
end
