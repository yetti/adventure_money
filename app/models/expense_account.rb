# frozen_string_literal: true

# == Schema Information
#
# Table name: expense_accounts
#
#  id         :uuid             not null, primary key
#  name       :string           default("UNKNOWN"), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class ExpenseAccount < ApplicationRecord
  validates :name, presence: true

  def to_s
    name
  end
end
