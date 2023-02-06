# frozen_string_literal: true

module AuthHelpers
  def login(email: "user@example.com", password: "secret123")
    post "/login", as: :json, params: {login: email, password: password}
  end

  def logout
    post "/logout", as: :json, headers: {"Authorization" => headers["Authorization"]}
  end

  def create_account(email: "user@example.com", password: "secret123", verify: false)
    post "/create-account", as: :json, params: {login: email, password: password, "password-confirm": password}
    verify_account if verify
  end

  def verify_account
    perform_enqueued_jobs
    email = ActionMailer::Base.deliveries.last
    verify_account_key = email.body.to_s[/verify-account\?key=(\S+)/, 1]
    post "/verify-account", as: :json, params: {key: verify_account_key}
  end
end
