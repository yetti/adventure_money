FactoryBot.define do
  factory :account do
    name { Faker::Commerce.department }
  end
end
