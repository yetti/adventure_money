class CreateTriggerUpdateAccountTimestamps < ActiveRecord::Migration[7.0]
  def change
    create_trigger :update_account_timestamps, on: :accounts
  end
end
