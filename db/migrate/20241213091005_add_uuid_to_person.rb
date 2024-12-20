# frozen_string_literal: true

class AddUuidToPerson < ActiveRecord::Migration[8.0]
  def change
    add_column :people, :uuid, :string

    add_index :people, :uuid, unique: true
  end
end
