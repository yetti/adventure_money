# frozen_string_literal: true

class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  include HasUuid

  validates :uuid, presence: true, uniqueness: true
end
