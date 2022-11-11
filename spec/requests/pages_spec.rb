require "rails_helper"

RSpec.describe "Pages" do
  before do
    create_account(verify: false)
    login
  end

  describe "GET /owed" do
    it "returns http success" do
      get "/owed"
      expect(response).to have_http_status(:success)
    end

    it "displays the Money Owed link as the active link" do
      get "/owed"
      expect(response.body).to have_tag("a", text: "Money Owed", with: {href: "/owed", class: "nav-link active", "aria-current": "page"})
    end
  end

  describe "GET /summary" do
    it "returns http success" do
      get "/summary"
      expect(response).to have_http_status(:success)
    end

    it "displays the Summary link as the active link" do
      get "/summary"
      expect(response.body).to have_tag("a", text: "Summary", with: {href: "/summary", class: "nav-link active", "aria-current": "page"})
    end
  end

  describe "GET /payments" do
    it "returns http success" do
      get "/payments"
      expect(response).to have_http_status(:success)
    end

    it "displays the Payments link as the active link" do
      get "/payments"
      expect(response.body).to have_tag("a", text: "Payments", with: {href: "/payments", class: "nav-link active", "aria-current": "page"})
    end
  end

  describe "GET /categories" do
    it "returns http success" do
      get "/categories"
      expect(response).to have_http_status(:success)
    end

    it "displays the Categories link as the active link" do
      get "/categories"
      expect(response.body).to have_tag("a", text: "Categories", with: {href: "/categories", class: "nav-link active", "aria-current": "page"})
    end
  end

  describe "GET /people" do
    it "returns http success" do
      get "/people"
      expect(response).to have_http_status(:success)
    end

    it "displays the People link as the active link" do
      get "/people"
      expect(response.body).to have_tag("a", text: "People", with: {href: "/people", class: "nav-link active", "aria-current": "page"})
    end
  end

  private

  def create_account(email: "user@example.com", password: "secret", verify: false)
    post "/create-account", as: :json, params: {login: email, password: password, "password-confirm": password}
    verify_account if verify
  end

  def verify_account
    perform_enqueued_jobs # run enqueued email deliveries
    email = ActionMailer::Base.deliveries.last
    verify_account_key = email.body.to_s[/verify-account\?key=(\S+)/, 1]
    post "/verify-account", as: :json, params: {key: verify_account_key}
  end

  def login(email: "user@example.com", password: "secret")
    post "/login", as: :json, params: {login: email, password: password}
  end

  def logout
    post "/logout", as: :json, headers: {"Authorization" => headers["Authorization"]}
  end
end
