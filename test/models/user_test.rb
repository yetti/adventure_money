require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "valid user" do
    user = build(:user)

    assert_predicate user, :valid?
  end

  test "invalid without an email address" do
    user = build(:user, {email: nil})

    assert_not user.valid?
  end

  test "invalid without first_name" do
    user = build(:user, {first_name: nil})

    assert_not user.valid?
  end

  test "invalid without last_name" do
    user = build(:user, {last_name: nil})

    assert_not user.valid?
  end

  test "invalid with a duplicate email address" do
    create(:user, {email: "test@example.com"})
    new_user = build(:user, {email: "test@example.com"})

    assert_not new_user.valid?
  end
end
