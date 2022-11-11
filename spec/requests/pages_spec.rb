require "rails_helper"

RSpec.describe "Pages" do
  before do
    account = Account.create!(email: "user@example.com", password: "secret123", status: "verified")
    login(account)
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

  def login(account)
    @request.session[:account_id] = account.id
    @request.session[:authenticated_by] = ["password"]
  end
end
