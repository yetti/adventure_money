# frozen_string_literal: true

require "money-rails"

class AccountSummaryComponent < ViewComponent::Base
  def initialize(account:)
    @account = account
  end

  def paid
    Money.from_cents(40_509_100).format(symbol: true, thousands_separator: ",", decimal_mark: ".")
  end

  def overdue_invoices
    Money.from_cents(1_278_700).format(symbol: true, thousands_separator: ",", decimal_mark: ".")
  end

  def outstanding_invoices
    Money.from_cents(24_598_800).format(symbol: true, thousands_separator: ",", decimal_mark: ".")
  end

  def expenses
    Money.from_cents(3_015_600).format(symbol: true, thousands_separator: ",", decimal_mark: ".")
  end
end
