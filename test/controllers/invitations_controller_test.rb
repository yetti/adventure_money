# frozen_string_literal: true

require "test_helper"

class InvitationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = create(:user)
    sign_in @user
    @person = create(:person)
  end

  test "should get new" do
    get new_user_invitation_path
    assert_response :success
  end

  test "should create invitation" do
    post user_invitation_path, params: { "user"=>{ "email"=>"test@example.com" }, "other"=>{ "person_uuid"=>"#{@person.uuid}" } }
    assert_redirected_to root_url
  end
end
