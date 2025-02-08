# frozen_string_literal: true

# == Schema Information
#
# Table name: bills
#
#  id          :bigint           not null, primary key
#  amount      :decimal(19, 4)
#  description :text
#  due_at      :datetime
#  name        :string           not null
#  uuid        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  account_id  :bigint           not null
#  user_id     :bigint           not null
#
# Indexes
#
#  index_bills_on_account_id              (account_id)
#  index_bills_on_account_id_and_user_id  (account_id,user_id)
#  index_bills_on_user_id                 (user_id)
#  index_bills_on_uuid                    (uuid) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (account_id => accounts.id)
#  fk_rails_...  (user_id => users.id)
#
require "test_helper"

class BillTest < ActiveSupport::TestCase
  include HasUuidTest

  setup do
    @subject = create(:bill)
  end

  test "should not save bill without name" do
    assert_raise ActiveRecord::RecordInvalid do
      create(:bill, name: nil)
    end
  end

  test "should not have duplicate name for same account and user" do
    account = create(:account)
    user = create(:user)
    create(:bill, name: "groceries", user:, account:)

    err = assert_raise ActiveRecord::RecordInvalid do
      create(:bill, name: "groceries", user:, account:)
    end
    assert_match /Name has already been taken/, err.message
  end

  test "should not save bill without amount" do
    assert_raise ActiveRecord::RecordInvalid do
      create(:bill, amount: nil)
    end
  end

  test "should not save bill without an owner" do
    assert_raise ActiveRecord::RecordInvalid do
      create(:bill, user: nil)
    end
  end

  test "should not save bill without a group account" do
    assert_raise ActiveRecord::RecordInvalid do
      create(:bill, account: nil)
    end
  end
end
