# frozen_string_literal: true

class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  # Adjust default sort order for UUID primary key
  self.implicit_order_column = :created_at
end
