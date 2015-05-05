class RemoveUserIdTransfer < ActiveRecord::Migration
  def change
  	remove_column :transfers, :user_id, :integer
  end
end
