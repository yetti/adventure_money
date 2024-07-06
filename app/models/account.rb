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
class Account < ApplicationRecord
  has_many :user_accounts, dependent: :destroy, strict_loading: true
  has_many :users, through: :user_accounts

  validates :name, presence: true
end
