class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string "name", :name
      t.string "email", :email
      t.string "username", :login
      # test
      t.string "gallons", :gallons
      t.string "cost", :cost

      t.timestamps null: false
    end
  end
end
