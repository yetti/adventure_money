# frozen_string_literal: true

require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should be redirected to log in page" do
    get pages_index_url
    assert_redirected_to new_user_session_path
  end

  class AuthenticatedUserTest < ActionDispatch::IntegrationTest
    include Devise::Test::IntegrationHelpers

    setup do
      # TODO: follow up when the fix for the hack below is released https://github.com/heartcombo/devise/pull/5728
      Rails.application.reload_routes_unless_loaded
      @user = FactoryBot.create(:user)
      sign_in @user
    end

    test "should get index" do
      get pages_index_url
      assert :success
    end
  end
end
