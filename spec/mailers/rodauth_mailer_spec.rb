# frozen_string_literal: true

require "rails_helper"
require "email_spec"
require "email_spec/rspec"

RSpec.describe(RodauthMailer) do
  # Use email_spec helpers and matchers
  include(EmailSpec::Helpers)
  include(EmailSpec::Matchers)

  let(:account) { Account.create(email: "user@example.com") }

  describe "#verify_account" do
    let(:email) { described_class.verify_account(nil, account.id, "test") }

    it "does not have the frozen string line in the body" do
      expect(email).not_to have_body_text(/frozen_string_literal/)
    end
  end

  describe "#reset_password" do
    let(:email) { described_class.reset_password(nil, account.id, "test") }

    it "does not have the frozen string line in the body" do
      expect(email).not_to have_body_text(/frozen_string_literal/)
    end
  end

  describe "#verify_login_change" do
    let(:email) { described_class.verify_login_change(nil, account.id, "test") }

    it "does not have the frozen string line in the body" do
      allow(account).to receive(:login_change_key)
      allow(account.login_change_key).to receive(:login).and_return("test@example.com")

      expect(email).not_to have_body_text(/frozen_string_literal/)
    end
  end

  describe "#password_changed" do
    let(:email) { described_class.password_changed(nil, account.id) }

    it "does not have the frozen string line in the body" do
      expect(email).not_to have_body_text(/frozen_string_literal/)
    end
  end
end
