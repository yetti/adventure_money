# frozen_string_literal: true

class SecondaryNavComponent < ViewComponent::Base
  def initialize(account:)
    @account = account
  end

  def account_name
    @account[:name]
  end
end
