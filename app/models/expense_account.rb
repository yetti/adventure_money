# frozen_string_literal: true

# == Schema Information
#
# Table name: expense_accounts
#
#  id         :uuid             not null, primary key
#  name       :string           default("UNKNOWN"), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  account_id :uuid             not null
#
# Indexes
#
#  index_expense_accounts_on_account_id  (account_id)
#
# Foreign Keys
#
#  fk_rails_...  (account_id => accounts.id)
#
class ExpenseAccount < ApplicationRecord
  belongs_to :account

  alias_attribute :owner, :account_id

  validates :name, presence: true

  def to_s
    name
  end
end
