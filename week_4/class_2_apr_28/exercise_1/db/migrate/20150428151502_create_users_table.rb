class CreateUsersTable < ActiveRecord::Migration
  def change
  	create_table :users do |t|
  		t.string :fname
  		t.string :lname
  		t.text :bio
  		t.datetime :birthday
  		t.boolean :awesome	
  	end
  end
end
