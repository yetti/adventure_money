# frozen_string_literal: true

# == Schema Information
#
# Table name: bills
#
#  id          :bigint           not null, primary key
#  amount      :decimal(19, 4)
#  description :text
#  due_at      :datetime
#  name        :string           not null
#  uuid        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  account_id  :bigint           not null
#  user_id     :bigint           not null
#
# Indexes
#
#  index_bills_on_account_id              (account_id)
#  index_bills_on_account_id_and_user_id  (account_id,user_id)
#  index_bills_on_user_id                 (user_id)
#  index_bills_on_uuid                    (uuid) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (account_id => accounts.id)
#  fk_rails_...  (user_id => users.id)
#
FactoryBot.define do
  factory :bill do
    description { Faker::Lorem.sentence }
    due_at { Faker::Date.forward(days: 14) }
    name { Faker::Commerce.product_name }
    amount { Faker::Commerce.price(range: 10..1_000) }
    account
    user

    trait :with_categories do
      association :categorizable, factory: :bill
    end
  end
end
