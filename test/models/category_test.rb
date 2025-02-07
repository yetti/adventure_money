# frozen_string_literal: true

# == Schema Information
#
# Table name: categories
#
#  id                 :bigint           not null, primary key
#  categorizable_type :string           not null
#  description        :text
#  name               :string           not null
#  uuid               :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  categorizable_id   :bigint           not null
#
# Indexes
#
#  idx_on_name_categorizable_type_categorizable_id_604c1bda9d   (name,categorizable_type,categorizable_id) UNIQUE
#  index_categories_on_categorizable                            (categorizable_type,categorizable_id)
#  index_categories_on_categorizable_type_and_categorizable_id  (categorizable_type,categorizable_id) UNIQUE
#
require "test_helper"

class CategoryTest < ActiveSupport::TestCase
  include HasUuidTest

  setup do
    @subject = create(:category)
  end

  test "should not save category without name" do
    assert_raise ActiveRecord::RecordInvalid do
      create(:category, name: nil)
    end
  end

  test "should be unique by categorizable" do
    bill = create(:bill)

    create(:category, name: "groceries", categorizable: bill)

    exception = assert_raise ActiveRecord::RecordInvalid do
      create(:category, name: "groceries", categorizable: bill)
    end

    assert_match /Name has already been taken/, exception.message
  end
end
