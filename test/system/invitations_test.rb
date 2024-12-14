# frozen_string_literal: true

require "application_system_test_case"

class InvitationsTest < ApplicationSystemTestCase
  setup do
    @person = create(:person)
  end

  test "should create invitation" do
    visit new_user_invitation_path

    fill_in "Email", with: "test@example.com"
    select @person.username, from: "other_person_uuid"
    click_on "Send an invitation"

    assert_text /An invitation email has been sent to/
  end
end
