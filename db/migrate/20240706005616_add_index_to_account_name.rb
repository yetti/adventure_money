class AddIndexToAccountName < ActiveRecord::Migration[7.1]
  def change
    add_index :accounts, :name
  end
end
