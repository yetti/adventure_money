# frozen_string_literal: true

require "rails_helper"

RSpec.describe("expense_accounts/new") do
  before do
    assign(:expense_account, ExpenseAccount.new(
      name: "MyString"
    ))
  end

  it "renders new expense_account form" do
    render

    assert_select "form[action=?][method=?]", expense_accounts_path, "post" do
      assert_select "input[name=?]", "expense_account[name]"
    end
  end
end
