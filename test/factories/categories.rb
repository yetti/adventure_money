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
FactoryBot.define do
  factory :category do
    name { Faker::Lorem.word }
    for_bill

    trait :for_bill do
      association :categorizable, factory: :bill
    end
  end
end
