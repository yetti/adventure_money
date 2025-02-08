# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  email      :string           not null
#  first_name :string
#  last_name  :string
#  username   :string           not null
#  uuid       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_users_on_email     (email) UNIQUE
#  index_users_on_username  (username) UNIQUE
#  index_users_on_uuid      (uuid) UNIQUE
#
FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    username { }

    factory :user_with_bills do
      transient do
        bills_count { 3 }
      end

      after(:create) do |user, context|
        create_list(:bill, context.bills_count, user:)

        user.reload
      end
    end
  end
end
