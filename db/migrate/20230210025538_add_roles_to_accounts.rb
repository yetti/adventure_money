class AddRolesToAccounts < ActiveRecord::Migration[7.0]
  def change
    add_column :accounts, :role, :integer, null: false, default: 1
  end
end
