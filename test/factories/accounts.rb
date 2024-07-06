# == Schema Information
#
# Table name: accounts
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_accounts_on_name  (name)
#
FactoryBot.define do
  factory :account do
    name { Faker::Commerce.department }

    trait :with_users do
      transient do
        user_count { 3 }
      end

      after(:create) do |account, evaluator|
        create_list(:user, evaluator.user_count, accounts: [account])
      end
    end
  end
end
