# frozen_string_literal: true

require "test_helper"

module HasUuidTest
  extend ActiveSupport::Concern

  included do
    test "responds to #uuid" do
      assert_respond_to(@subject, :uuid)
    end
  end
end
