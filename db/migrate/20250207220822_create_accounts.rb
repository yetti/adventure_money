# frozen_string_literal: true

class CreateAccounts < ActiveRecord::Migration[8.0]
  def change
    create_table :accounts do |t|
      t.string :uuid, index: { unique: true }
      t.string :name, null: false, index: { unique: true }

      t.timestamps
    end
  end
end
