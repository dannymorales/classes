class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :type
      t.decimal :amount
      t.text :comments
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
