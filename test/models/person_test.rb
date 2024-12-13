# frozen_string_literal: true

# == Schema Information
#
# Table name: people
#
#  id         :bigint           not null, primary key
#  manager    :boolean
#  username   :string           not null
#  uuid       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint
#
# Indexes
#
#  index_people_on_user_id  (user_id)
#  index_people_on_uuid     (uuid) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
require "test_helper"

class PersonTest < ActiveSupport::TestCase
  test "valid user" do
    person = create(:person)
    assert(person.valid?)
  end

  test "is not a manager" do
    person = create(:person)
    assert_equal(person.manager?, false)
  end

  test "is a manager" do
    person = create(:person, :manager)
    assert_equal(person.manager?, true)
  end

  test "is not a member" do
    person = create(:person)
    assert_equal(person.member?, false)
  end

  test "is a member" do
    person = create(:person, :with_user)
    assert_equal(person.member?, true)
  end

  test "requires uuid" do
    person = create(:person)
    assert(person.valid?)
    assert_not_nil(person.uuid)
  end
end
