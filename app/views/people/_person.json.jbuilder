# frozen_string_literal: true

json.extract! person, :uuid, :user_id, :username, :manager, :created_at, :updated_at
json.url person_url(person, format: :json)
