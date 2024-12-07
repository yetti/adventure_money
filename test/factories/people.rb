# frozen_string_literal: true

# == Schema Information
#
# Table name: people
#
#  id         :bigint           not null, primary key
#  manager    :boolean
#  username   :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint
#
# Indexes
#
#  index_people_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
FactoryBot.define do
  factory :person do
    username { Faker::Internet.username }
    manager { false }

    trait :with_user do
      user
    end

    trait :is_manager do
      manager { true }
    end
  end
end
