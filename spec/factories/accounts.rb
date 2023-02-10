FactoryBot.define do
  factory :account do
    email { Faker::Internet.email }
    status { 2 }
  end
end
