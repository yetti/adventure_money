# frozen_string_literal: true

# == Schema Information
#
# Table name: people
#
#  id         :bigint           not null, primary key
#  manager    :boolean
#  username   :string           not null
#  uuid       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint
#
# Indexes
#
#  index_people_on_user_id  (user_id)
#  index_people_on_uuid     (uuid) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Person < ApplicationRecord
  include HasUuid

  belongs_to :user, optional: true

  validates :username, presence: true
  validates :uuid, presence: true, uniqueness: true

  def member?
    user.present?
  end
end
