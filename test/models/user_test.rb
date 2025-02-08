# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  email      :string           not null
#  first_name :string
#  last_name  :string
#  username   :string           not null
#  uuid       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_users_on_email     (email) UNIQUE
#  index_users_on_username  (username) UNIQUE
#  index_users_on_uuid      (uuid) UNIQUE
#
require "test_helper"

class UserTest < ActiveSupport::TestCase
  include HasUuidTest

  setup do
    @subject = create(:user)
  end

  test "should not save user without email" do
    assert_raise ActiveRecord::RecordInvalid do
      create(:user, email: nil)
    end
  end

  test "should generate a username from email" do
    user = build(:user)

    assert_predicate user, :valid?

    assert_nothing_raised do
      user.save
    end

    assert_match user.email[/^[^@]+/], user.username
  end
end
