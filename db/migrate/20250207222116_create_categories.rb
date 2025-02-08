# frozen_string_literal: true

class CreateCategories < ActiveRecord::Migration[8.0]
  def change
    create_table :categories do |t|
      t.string :uuid, index: { unique: true }
      t.string :name, null: false
      t.text :description
      t.references :categorizable, polymorphic: true, null: false

      t.timestamps
    end

    add_index :categories, [ :categorizable_type, :categorizable_id ], unique: true
  end
end
