# frozen_string_literal: true

require "test_helper"

class PeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    sign_in_user
    @person = create(:person)
  end

  test "should get index" do
    get people_url
    assert_response :success
  end

  test "should get new" do
    get new_person_url
    assert_response :success
  end

  test "should create person" do
    assert_difference("Person.count") do
      post people_url, params: { person: { user_id: @person.user_id, username: @person.username } }
    end

    assert_redirected_to person_url(Person.last)
  end

  test "should fail to create person" do
    assert_no_difference("Person.count") do
      post people_url, params: { person: { user_id: @person.user_id } }
    end

    assert_response :unprocessable_entity
  end

  test "should show person" do
    get person_url(@person)
    assert_response :success
  end

  test "should get edit" do
    get edit_person_url(@person)
    assert_response :success
  end

  test "should update person" do
    patch person_url(@person), params: { person: { user_id: @person.user_id, username: @person.username } }
    assert_redirected_to person_url(@person)
  end

  test "should fail to update person" do
    patch person_url(@person), params: { person: { user_id: @person.user_id, username: nil } }
    assert_response :unprocessable_entity
  end

  test "should destroy person" do
    assert_difference("Person.count", -1) do
      delete person_url(@person)
    end

    assert_redirected_to people_url
  end
end
