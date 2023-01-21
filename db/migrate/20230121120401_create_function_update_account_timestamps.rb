class CreateFunctionUpdateAccountTimestamps < ActiveRecord::Migration[7.0]
  def change
    create_function :update_account_timestamps
  end
end
