# frozen_string_literal: true

class CreateBills < ActiveRecord::Migration[8.0]
  def change
    create_table :bills do |t|
      t.string :uuid, index: { unique: true }
      t.datetime :due_at
      t.string :name, null: false
      t.text :description
      t.decimal :amount, precision: 19, scale: 4
      t.references :account, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end

    add_index :bills, [ :account_id, :user_id ]
  end
end
