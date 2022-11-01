require "rails_helper"

RSpec.describe "pages/payments.html.erb" do
  it "displays the page title" do
    render

    expect(rendered).to match(/Payments/)
  end
end
