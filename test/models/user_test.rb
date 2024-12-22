# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  confirmation_sent_at   :datetime
#  confirmation_token     :string
#  confirmed_at           :datetime
#  current_sign_in_at     :datetime
#  current_sign_in_ip     :string
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  failed_attempts        :integer          default(0), not null
#  last_sign_in_at        :datetime
#  last_sign_in_ip        :string
#  locked_at              :datetime
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  sign_in_count          :integer          default(0), not null
#  unconfirmed_email      :string
#  unlock_token           :string
#  uuid                   :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_confirmation_token    (confirmation_token) UNIQUE
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#  index_users_on_unlock_token          (unlock_token) UNIQUE
#  index_users_on_uuid                  (uuid) UNIQUE
#
require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "valid user" do
    user = create(:user)
    assert(user.valid?)
  end

  test "require email" do
    assert_raises(ActiveRecord::RecordInvalid, match: /Validation failed: Email can't be blank/) do
      create(:user, email: nil)
    end
  end

  test "require uuid" do
    user = create(:user)
    assert(user.valid?)
    assert_not_nil(user.uuid)
  end

  test "should return email as form label" do
    user = create(:user)
    assert(user.valid?)
    assert_equal(user.email, user.to_label)
  end
end
