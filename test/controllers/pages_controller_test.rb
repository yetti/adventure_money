# frozen_string_literal: true

require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should be redirected to log in page" do
    get pages_index_url
    assert_redirected_to new_user_session_path
  end

  class AuthenticatedUserTest < ActionDispatch::IntegrationTest
    setup do
      @user = create(:user)
      sign_in @user
    end

    test "should get index" do
      get pages_index_url
      assert :success
    end
  end
end
