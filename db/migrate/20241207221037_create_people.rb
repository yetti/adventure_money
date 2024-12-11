# frozen_string_literal: true

class CreatePeople < ActiveRecord::Migration[8.0]
  def change
    create_table :people do |t|
      t.references :user, null: true, foreign_key: true
      t.string :username, null: false
      t.boolean :manager

      t.timestamps
    end
  end
end
