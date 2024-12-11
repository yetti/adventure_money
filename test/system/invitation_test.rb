# frozen_string_literal: true

require "application_system_test_case"

class InvitationTest < ApplicationSystemTestCase
  setup do
    sign_in_user
    @non_member = create(:person)
    @member = create(:person, :member)
  end

  test "should be invitable if not already a member" do
    visit person_url(@non_member)
    assert_text "Invite this person"
  end

  test "should not be invitable if already a member" do
    visit person_url(@member)
    assert_no_text "Invite this person"
  end

  test "should create an invitation" do
    visit person_url(@non_member)
    click_on "Invite this person"
  end
end
