# frozen_string_literal: true

# frozen_string_literal: :true

require "test_helper"

class ApplicationHelperTest < ActionView::TestCase
  class FlashClassTest < ApplicationHelperTest
    test "notice style" do
      assert_equal "alert-success", flash_class("notice")
    end

    test "alert style" do
      assert_equal "alert-danger", flash_class("alert")
    end

    test "info style" do
      assert_equal "alert-info", flash_class("info")
    end

    test "warning style" do
      assert_equal "alert-warning", flash_class("warning")
    end

    test "error style" do
      assert_equal "alert-danger", flash_class("error")
    end

    test "success style" do
      assert_equal "alert-success", flash_class("success")
    end

    test "everything else" do
      assert_equal "alert-info", flash_class("foo")
    end
  end
end
