# == Schema Information
#
# Table name: accounts
#
#  id            :uuid             not null, primary key
#  email         :citext           not null
#  password_hash :string
#  role          :integer          default("user"), not null
#  status        :integer          default("unverified"), not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
# Indexes
#
#  index_accounts_on_email  (email) UNIQUE WHERE (status = ANY (ARRAY[1, 2]))
#
FactoryBot.define do
  factory :account do
    email { Faker::Internet.email }
    status { 2 }
  end
end
