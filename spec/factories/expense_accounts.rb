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
require "faker"

FactoryBot.define do
  factory :expense_account do
    name { Faker::Commerce.product_name }
  end
end
