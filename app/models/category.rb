# frozen_string_literal: true

# == Schema Information
#
# Table name: categories
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  uuid       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_categories_on_name  (name) UNIQUE
#  index_categories_on_uuid  (uuid) UNIQUE
#
class Category < ApplicationRecord
  include HasUuid

  validates :name, presence: true, uniqueness: true
  validates :uuid, presence: true, uniqueness: true
end
