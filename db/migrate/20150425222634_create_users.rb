class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string "name", :name
      t.string "email", :email
      t.string "username", :login

      t.timestamps null: false
    end
  end
end
