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
require "rails_helper"

RSpec.describe(ExpenseAccount) do
  describe "#to_s" do
    subject { create(:expense_account) }

    it "has a name" do
      expect(described_class.name).not_to be_nil
    end
  end
end
