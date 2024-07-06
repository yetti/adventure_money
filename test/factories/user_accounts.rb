# == Schema Information
#
# Table name: user_accounts
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  account_id :bigint           not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_user_accounts_on_account_id              (account_id)
#  index_user_accounts_on_user_id                 (user_id)
#  index_user_accounts_on_user_id_and_account_id  (user_id,account_id) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (account_id => accounts.id)
#  fk_rails_...  (user_id => users.id)
#
FactoryBot.define do
  factory :user_account do
    user
    account
  end
end
