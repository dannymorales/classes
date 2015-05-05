class CreateTransfers < ActiveRecord::Migration
  def change
    create_table :transfers do |t|
      t.decimal :amount
      t.text :comments
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
