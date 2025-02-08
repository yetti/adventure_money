# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  email      :string           not null
#  first_name :string
#  last_name  :string
#  username   :string           not null
#  uuid       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_users_on_email     (email) UNIQUE
#  index_users_on_username  (username) UNIQUE
#  index_users_on_uuid      (uuid) UNIQUE
#
class User < ApplicationRecord
  has_many :bills
  has_many :accounts, through: :bills

  validates :email, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true

  before_validation :generate_username, on: :create

  private

  def generate_username
    return unless email.present? || username.present?

    self.username = "#{self.email[/^[^@]+/]}_#{SecureRandom.hex(6)}"
  end
end
