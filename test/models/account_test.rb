require "test_helper"

class AccountTest < ActiveSupport::TestCase
  test "valid account" do
    account = build(:account)

    assert_predicate account, :valid?
  end

  test "invalid without a name" do
    account = build(:account, {name: nil})

    assert_not account.valid?
  end
end
