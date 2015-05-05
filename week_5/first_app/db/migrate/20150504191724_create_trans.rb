class CreateTrans < ActiveRecord::Migration
  def change
    create_table :trans do |t|
      t.string :amount
      t.string :decimal
      t.string :comments
      t.string :string
      t.string :user_id
      t.string :integer

      t.timestamps null: false
    end
  end
end
