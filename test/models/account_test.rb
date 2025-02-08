# frozen_string_literal: true

# == Schema Information
#
# Table name: accounts
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  uuid       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_accounts_on_name  (name) UNIQUE
#  index_accounts_on_uuid  (uuid) UNIQUE
#
require "test_helper"

class AccountTest < ActiveSupport::TestCase
  include HasUuidTest

  setup do
    @subject = create(:account)
  end

  test "should not save account without name" do
    assert_raise ActiveRecord::RecordInvalid do
      create(:account, name: nil)
    end
  end

  test "should not have duplicate names" do
    create(:account, name: "soccer club")

    err = assert_raise ActiveRecord::RecordInvalid do
      create(:account, name: "soccer club")
    end
    assert_match /Name has already been taken/, err.message
  end
end
