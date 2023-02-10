# frozen_string_literal: true

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
class Account < ApplicationRecord
  has_many :expense_accounts, dependent: :destroy

  include Rodauth::Rails.model
  enum :status, unverified: 1, verified: 2, closed: 3
  enum :role, user: 1, admin: 2
end
