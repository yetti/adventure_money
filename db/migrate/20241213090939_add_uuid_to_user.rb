# frozen_string_literal: true

class AddUuidToUser < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :uuid, :string

    add_index :users, :uuid, unique: true
  end
end
