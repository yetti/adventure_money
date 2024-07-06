# == Schema Information
#
# Table name: accounts
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_accounts_on_name  (name)
#
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

  test "has users" do
    account = create(:account, :with_users)

    assert_equal 3, account.users.count
  end
end
