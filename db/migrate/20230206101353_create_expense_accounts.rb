class CreateExpenseAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :expense_accounts, id: :uuid do |t|
      t.string :name, null: false, default: "UNKNOWN"

      t.timestamps
    end
  end
end
