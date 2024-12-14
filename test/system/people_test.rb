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

    fill_in "Username", with: @person.username
    click_on "Create Person"

    assert_text "Person was successfully created"
    click_on "Back"
  end

  test "should create manager" do
    visit people_url
    click_on "New person"

    check "Manager"
    fill_in "Username", with: @person.username
    click_on "Create Person"

    assert_text "Person was successfully created"
    assert_text "Manager: true"
    click_on "Back"
  end

  test "should associate with User" do
    visit people_url
    click_on "New person"

    fill_in "User", with: @user.id
    select @user.email, from: "person_user_id"
    fill_in "Username", with: @person.username
    click_on "Create Person"

    assert_text "Person was successfully created"
    assert_text "User: #{@user.uuid}"
    click_on "Back"
  end

  test "should update Person" do
    visit person_url(@person)
    click_on "Edit this person", match: :first

    check "Manager"
    fill_in "Username", with: @person.username
    click_on "Update Person"

    assert_text "Person was successfully updated"
    assert_text "Manager: true"
    click_on "Back"
  end

  test "should destroy Person" do
    visit person_url(@person)
    click_on "Destroy this person", match: :first

    assert_text "Person was successfully destroyed"
  end

  test "should nullify association when User is deleted" do
    new_user = create(:user)
    @person.update!(user: new_user)
    visit person_url(@person)
    assert_text "User: #{new_user.uuid}"

    new_user.destroy
    assert_nil(User.find_by(id: new_user.id))
    assert_not_nil(Person.find_by(id: @person.id))
    assert_nil(@person.user)
    visit person_url(@person)
    assert_text "User:"
  end
end
