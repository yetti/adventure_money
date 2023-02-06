# frozen_string_literal: true

json.extract!(expense_account, :id, :name, :created_at, :updated_at)
json.url(expense_account_url(expense_account, format: :json))
