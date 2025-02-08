# frozen_string_literal: true

# == Schema Information
#
# Table name: accounts
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  uuid       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_accounts_on_name  (name) UNIQUE
#  index_accounts_on_uuid  (uuid) UNIQUE
#
FactoryBot.define do
  factory :account do
    name { Faker::Commerce.department }

    factory :account_with_bills do
      transient do
        bills_count { 3 }
      end

      after(:create) do |account, context|
        create_list(:bill, context.bills_count, account:)

        account.reload
      end
    end
  end
end
