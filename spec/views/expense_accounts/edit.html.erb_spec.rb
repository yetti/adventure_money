# frozen_string_literal: true

require "rails_helper"

RSpec.describe("expense_accounts/edit") do
  let(:expense_account) do
    ExpenseAccount.create!(
      name: "MyString",
      account_id: account.id
    )
  end

  let(:account) { create(:account) }

  before do
    assign(:expense_account, expense_account)
  end

  it "renders the edit expense_account form" do
    render

    assert_select "form[action=?][method=?]", expense_account_path(expense_account), "post" do
      assert_select "input[name=?]", "expense_account[name]"
    end
  end
end
