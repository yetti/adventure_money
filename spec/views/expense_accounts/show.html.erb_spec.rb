# frozen_string_literal: true

require "rails_helper"

RSpec.describe("expense_accounts/show") do
  let(:account) { create(:account) }

  before do
    assign(:expense_account, ExpenseAccount.create!(
      name: "Name",
      account_id: account.id
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to(match(/Name/))
  end
end
