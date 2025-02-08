# frozen_string_literal: true

# == Schema Information
#
# Table name: accounts
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  uuid       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_accounts_on_name  (name) UNIQUE
#  index_accounts_on_uuid  (uuid) UNIQUE
#
class Account < ApplicationRecord
  has_many :bills, dependent: :destroy
  has_many :users, through: :bills
  has_many :categories, through: :bills

  validates :name, presence: true, uniqueness: true
  validates :name, presence: true, uniqueness: true
end
