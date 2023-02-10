# frozen_string_literal: true

require "rails_helper"

RSpec.describe("expense_accounts/index") do
  let(:account) { create(:account) }

  before do
    assign(:expense_accounts, [
      ExpenseAccount.create!(
        name: "Name",
        account_id: account.id
      ),
      ExpenseAccount.create!(
        name: "Name",
        account_id: account.id
      )
    ])
  end

  it "renders a list of expense_accounts" do
    render
    cell_selector = (Rails::VERSION::STRING >= "7") ? "div>p" : "tr>td"
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
  end
end
