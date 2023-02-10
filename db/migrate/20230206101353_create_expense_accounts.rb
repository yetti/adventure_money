class CreateExpenseAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :expense_accounts, id: :uuid do |t|
      t.string :name, null: false, default: "UNKNOWN"
      t.references :account, null: false, foreign_key: true, type: :uuid, on_delete: :cascade

      t.timestamps
    end
  end
end
