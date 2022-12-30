# frozen_string_literal: true

require "rails_helper"

RSpec.describe(ErrorsController) do
  describe "GET not_found" do
    it "renders the not found page" do
      get :not_found

      expect(response).to(render_template("not_found"))
    end
  end

  describe "GET unprocessable" do
    it "renders the unprocessable request page" do
      get :unprocessable

      expect(response).to(render_template("unprocessable"))
    end
  end

  describe "GET internal_server" do
    it "renders the internal server error page" do
      get :internal_server

      expect(response).to(render_template("internal_server"))
    end
  end
end
