# frozen_string_literal: true

class CreateCategories < ActiveRecord::Migration[8.0]
  def change
    create_table :categories do |t|
      t.string :name, null: false
      t.string :uuid

      t.timestamps
    end

    add_index :categories, :name, unique: true
    add_index :categories, :uuid, unique: true
  end
end
