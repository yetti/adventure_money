# frozen_string_literal: true

require "application_system_test_case"

class PeopleTest < ApplicationSystemTestCase
  setup do
    sign_in_user
    @person = create(:person)
  end

  test "visiting the index" do
    visit people_url
    assert_selector "h1", text: "People"
  end

  test "should create person" do
    visit people_url
    click_on "New person"

    check "Manager" if @person.manager
    fill_in "User", with: @person.user_id
    fill_in "Username", with: @person.username
    click_on "Create Person"

    assert_text "Person was successfully created"
    click_on "Back"
  end

  test "should update Person" do
    visit person_url(@person)
    click_on "Edit this person", match: :first

    check "Manager" if @person.manager
    fill_in "User", with: @person.user_id
    fill_in "Username", with: @person.username
    click_on "Update Person"

    assert_text "Person was successfully updated"
    click_on "Back"
  end

  test "should destroy Person" do
    visit person_url(@person)
    click_on "Destroy this person", match: :first

    assert_text "Person was successfully destroyed"
  end
end
