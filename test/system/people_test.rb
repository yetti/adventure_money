# frozen_string_literal: true

require "application_system_test_case"

class PeopleTest < ApplicationSystemTestCase
  setup do
    @person = create(:person)
  end

  test "visiting the index" do
    visit people_url
    assert_selector "h1", text: "People"
  end

  test "should create person" do
    visit people_url
    click_on "New person"

    fill_in "Username", with: Faker::Internet.username
    click_on "Create Person"

    assert_text "Person was successfully created"
    click_on "Back to people"
  end

  test "should require username" do
    visit people_url
    click_on "New person"

    click_on "Create Person"

    assert_text "Please review the problems below"
    assert_text "Username can't be blank"
    click_on "Back to people"
  end

  test "should create manager" do
    visit people_url
    click_on "New person"

    check "Manager"
    fill_in "Username", with: Faker::Internet.username
    click_on "Create Person"

    assert_text "Person was successfully created"
    assert_text "Manager: true"
    click_on "Back to people"
  end

  test "should update Person" do
    visit person_url(@person)
    click_on "Edit this person", match: :first

    check "Manager"
    fill_in "Username", with: Faker::Internet.username
    click_on "Update Person"

    assert_text "Person was successfully updated"
    assert_text "Manager: true"
    click_on "Back to people"
  end

  test "should destroy Person" do
    visit person_url(@person)
    click_on "Destroy this person", match: :first

    assert_text "Person was successfully destroyed"
  end
end
