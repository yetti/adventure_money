# frozen_string_literal: true

module HasUuid
  extend ActiveSupport::Concern

  included do
    before_validation :generate_uuid
  end

  private

  def generate_uuid
    self.uuid ||= SecureRandom.uuid_v7
  end
end
