# frozen_string_literal: true

require "application_system_test_case"

class NavbarTest < ApplicationSystemTestCase
  test "if not logged in show sign up link" do
    sign_out @user
    visit root_url

    find('a[data-bs-toggle="dropdown"]').click
    assert_selector 'a[class="dropdown-item"]', text: "Sign up"
  end

  test "if not logged in show sign in link" do
    sign_out @user
    visit root_url

    find('a[data-bs-toggle="dropdown"]').click
    assert_selector 'a[class="dropdown-item"]', text: "Sign in"
  end
end
