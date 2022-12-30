# frozen_string_literal: true

require "rails_helper"

RSpec.describe("Error routing", :routing) do
  it "routes 404 to ErrorsController#not_found" do
    expect(get("/404")).to(route_to("errors#not_found"))
  end

  it "routes 422 to ErrorsController#unprocessable" do
    expect(get("/422")).to(route_to("errors#unprocessable"))
  end

  it "routes 500 to ErrorsController#internal_server" do
    expect(get("/500")).to(route_to("errors#internal_server"))
  end
end
