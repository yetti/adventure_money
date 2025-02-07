# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :uuid, index: { unique: true }
      t.string :first_name
      t.string :last_name
      t.string :username, null: false, index: { unique: true }
      t.string :email, null: false, index: { unique: true }

      t.timestamps
    end
  end
end
