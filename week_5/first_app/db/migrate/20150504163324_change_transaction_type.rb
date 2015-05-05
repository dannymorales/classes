class ChangeTransactionType < ActiveRecord::Migration
  def change
  	rename_column :transactions, :transaction_type, :mama
  end
end
